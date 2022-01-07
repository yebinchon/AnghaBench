
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dentry; int * mnt; } ;
struct nameidata {int flags; TYPE_2__ path; int m_seq; } ;
struct dentry {int d_seq; int d_lockref; } ;
struct TYPE_3__ {int d_lockref; } ;


 int BUG_ON (int) ;
 int ECHILD ;
 int LOOKUP_RCU ;
 int dput (struct dentry*) ;
 int legitimize_links (struct nameidata*) ;
 int legitimize_mnt (int *,int ) ;
 int legitimize_root (struct nameidata*) ;
 int lockref_get_not_dead (int *) ;
 int rcu_read_unlock () ;
 int read_seqcount_retry (int *,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int unlazy_child(struct nameidata *nd, struct dentry *dentry, unsigned seq)
{
 BUG_ON(!(nd->flags & LOOKUP_RCU));

 nd->flags &= ~LOOKUP_RCU;
 if (unlikely(!legitimize_links(nd)))
  goto out2;
 if (unlikely(!legitimize_mnt(nd->path.mnt, nd->m_seq)))
  goto out2;
 if (unlikely(!lockref_get_not_dead(&nd->path.dentry->d_lockref)))
  goto out1;
 if (unlikely(!lockref_get_not_dead(&dentry->d_lockref)))
  goto out;
 if (unlikely(read_seqcount_retry(&dentry->d_seq, seq)))
  goto out_dput;




 if (unlikely(!legitimize_root(nd)))
  goto out_dput;
 rcu_read_unlock();
 return 0;

out2:
 nd->path.mnt = ((void*)0);
out1:
 nd->path.dentry = ((void*)0);
out:
 rcu_read_unlock();
 return -ECHILD;
out_dput:
 rcu_read_unlock();
 dput(dentry);
 return -ECHILD;
}
