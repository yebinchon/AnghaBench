
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fuse_dev {TYPE_2__* fc; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int fasync; } ;
struct TYPE_4__ {TYPE_1__ iq; } ;


 int EPERM ;
 int fasync_helper (int,struct file*,int,int *) ;
 struct fuse_dev* fuse_get_dev (struct file*) ;

__attribute__((used)) static int fuse_dev_fasync(int fd, struct file *file, int on)
{
 struct fuse_dev *fud = fuse_get_dev(file);

 if (!fud)
  return -EPERM;


 return fasync_helper(fd, file, on, &fud->fc->iq.fasync);
}
