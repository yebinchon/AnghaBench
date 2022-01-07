
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {int dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;
typedef int fmode_t ;
struct TYPE_4__ {int mode; int fd; int open_mutex; } ;


 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 TYPE_2__* HOSTFS_I (struct inode*) ;
 int __putname (char*) ;
 int append ;
 int close_file (int*) ;
 char* dentry_name (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_file (char*,int,int,int ) ;
 int replace_file (int,int) ;

__attribute__((used)) static int hostfs_open(struct inode *ino, struct file *file)
{
 char *name;
 fmode_t mode;
 int err;
 int r, w, fd;

 mode = file->f_mode & (FMODE_READ | FMODE_WRITE);
 if ((mode & HOSTFS_I(ino)->mode) == mode)
  return 0;

 mode |= HOSTFS_I(ino)->mode;

retry:
 r = w = 0;

 if (mode & FMODE_READ)
  r = 1;
 if (mode & FMODE_WRITE)
  r = w = 1;

 name = dentry_name(file->f_path.dentry);
 if (name == ((void*)0))
  return -ENOMEM;

 fd = open_file(name, r, w, append);
 __putname(name);
 if (fd < 0)
  return fd;

 mutex_lock(&HOSTFS_I(ino)->open_mutex);

 if ((mode & HOSTFS_I(ino)->mode) == mode) {
  mutex_unlock(&HOSTFS_I(ino)->open_mutex);
  close_file(&fd);
  return 0;
 }
 if ((mode | HOSTFS_I(ino)->mode) != mode) {
  mode |= HOSTFS_I(ino)->mode;
  mutex_unlock(&HOSTFS_I(ino)->open_mutex);
  close_file(&fd);
  goto retry;
 }
 if (HOSTFS_I(ino)->fd == -1) {
  HOSTFS_I(ino)->fd = fd;
 } else {
  err = replace_file(fd, HOSTFS_I(ino)->fd);
  close_file(&fd);
  if (err < 0) {
   mutex_unlock(&HOSTFS_I(ino)->open_mutex);
   return err;
  }
 }
 HOSTFS_I(ino)->mode = mode;
 mutex_unlock(&HOSTFS_I(ino)->open_mutex);

 return 0;
}
