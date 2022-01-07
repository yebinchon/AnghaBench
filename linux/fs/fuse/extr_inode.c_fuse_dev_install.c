
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_dev {int entry; int fc; } ;
struct fuse_conn {int lock; int devices; } ;


 int fuse_conn_get (struct fuse_conn*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fuse_dev_install(struct fuse_dev *fud, struct fuse_conn *fc)
{
 fud->fc = fuse_conn_get(fc);
 spin_lock(&fc->lock);
 list_add_tail(&fud->entry, &fc->devices);
 spin_unlock(&fc->lock);
}
