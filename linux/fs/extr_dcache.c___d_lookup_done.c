
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hlist_bl_head {int dummy; } ;
struct TYPE_4__ {int d_alias; int d_in_lookup_hash; } ;
struct TYPE_3__ {int hash; } ;
struct dentry {int d_lru; TYPE_2__ d_u; int * d_wait; int d_flags; TYPE_1__ d_name; int d_parent; } ;


 int DCACHE_PAR_LOOKUP ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int __hlist_bl_del (int *) ;
 int hlist_bl_lock (struct hlist_bl_head*) ;
 int hlist_bl_unlock (struct hlist_bl_head*) ;
 struct hlist_bl_head* in_lookup_hash (int ,int ) ;
 int wake_up_all (int *) ;

void __d_lookup_done(struct dentry *dentry)
{
 struct hlist_bl_head *b = in_lookup_hash(dentry->d_parent,
       dentry->d_name.hash);
 hlist_bl_lock(b);
 dentry->d_flags &= ~DCACHE_PAR_LOOKUP;
 __hlist_bl_del(&dentry->d_u.d_in_lookup_hash);
 wake_up_all(dentry->d_wait);
 dentry->d_wait = ((void*)0);
 hlist_bl_unlock(b);
 INIT_HLIST_NODE(&dentry->d_u.d_alias);
 INIT_LIST_HEAD(&dentry->d_lru);
}
