
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_conn {int minor; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_2__ {int host; } ;


 long ENOTTY ;
 int FUSE_IOCTL_DIR ;
 long fuse_ioctl_common (struct file*,unsigned int,unsigned long,int ) ;
 struct fuse_conn* get_fuse_conn (int ) ;

__attribute__((used)) static long fuse_dir_ioctl(struct file *file, unsigned int cmd,
       unsigned long arg)
{
 struct fuse_conn *fc = get_fuse_conn(file->f_mapping->host);


 if (fc->minor < 18)
  return -ENOTTY;

 return fuse_ioctl_common(file, cmd, arg, FUSE_IOCTL_DIR);
}
