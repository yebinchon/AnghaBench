
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dentry* dentry; int * mnt; } ;
struct nameidata {int flags; scalar_t__ inode; TYPE_1__ path; int seq; } ;
struct dentry {scalar_t__ d_inode; } ;


 int BUG_ON (int) ;
 int ECHILD ;
 int LOOKUP_RCU ;
 int legitimize_links (struct nameidata*) ;
 int legitimize_path (struct nameidata*,TYPE_1__*,int ) ;
 int legitimize_root (struct nameidata*) ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int unlazy_walk(struct nameidata *nd)
{
 struct dentry *parent = nd->path.dentry;

 BUG_ON(!(nd->flags & LOOKUP_RCU));

 nd->flags &= ~LOOKUP_RCU;
 if (unlikely(!legitimize_links(nd)))
  goto out1;
 if (unlikely(!legitimize_path(nd, &nd->path, nd->seq)))
  goto out;
 if (unlikely(!legitimize_root(nd)))
  goto out;
 rcu_read_unlock();
 BUG_ON(nd->inode != parent->d_inode);
 return 0;

out1:
 nd->path.mnt = ((void*)0);
 nd->path.dentry = ((void*)0);
out:
 rcu_read_unlock();
 return -ECHILD;
}
