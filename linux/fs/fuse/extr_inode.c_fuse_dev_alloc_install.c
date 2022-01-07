
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_dev {int dummy; } ;
struct fuse_conn {int dummy; } ;


 struct fuse_dev* fuse_dev_alloc () ;
 int fuse_dev_install (struct fuse_dev*,struct fuse_conn*) ;

struct fuse_dev *fuse_dev_alloc_install(struct fuse_conn *fc)
{
 struct fuse_dev *fud;

 fud = fuse_dev_alloc();
 if (!fud)
  return ((void*)0);

 fuse_dev_install(fud, fc);
 return fud;
}
