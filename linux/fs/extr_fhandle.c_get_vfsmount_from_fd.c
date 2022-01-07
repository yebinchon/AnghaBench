
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_6__ {int mnt; } ;
struct fs_struct {int lock; TYPE_2__ pwd; } ;
struct fd {TYPE_3__* file; } ;
struct TYPE_8__ {struct fs_struct* fs; } ;
struct TYPE_5__ {int mnt; } ;
struct TYPE_7__ {TYPE_1__ f_path; } ;


 int AT_FDCWD ;
 int EBADF ;
 struct vfsmount* ERR_PTR (int ) ;
 TYPE_4__* current ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 struct vfsmount* mntget (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct vfsmount *get_vfsmount_from_fd(int fd)
{
 struct vfsmount *mnt;

 if (fd == AT_FDCWD) {
  struct fs_struct *fs = current->fs;
  spin_lock(&fs->lock);
  mnt = mntget(fs->pwd.mnt);
  spin_unlock(&fs->lock);
 } else {
  struct fd f = fdget(fd);
  if (!f.file)
   return ERR_PTR(-EBADF);
  mnt = mntget(f.file->f_path.mnt);
  fdput(f);
 }
 return mnt;
}
