
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn {int devices; } ;


 int WARN_ON (int) ;
 int kfree_rcu (struct fuse_conn*,int ) ;
 int list_empty (int *) ;
 int rcu ;

void fuse_free_conn(struct fuse_conn *fc)
{
 WARN_ON(!list_empty(&fc->devices));
 kfree_rcu(fc, rcu);
}
