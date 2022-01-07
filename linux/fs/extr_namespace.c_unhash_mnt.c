
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mountpoint {int dummy; } ;
struct TYPE_2__ {int mnt_root; } ;
struct mount {struct mountpoint* mnt_mp; int mnt_mp_list; int mnt_hash; int mnt_child; TYPE_1__ mnt; int mnt_mountpoint; struct mount* mnt_parent; } ;


 int hlist_del_init (int *) ;
 int hlist_del_init_rcu (int *) ;
 int list_del_init (int *) ;

__attribute__((used)) static struct mountpoint *unhash_mnt(struct mount *mnt)
{
 struct mountpoint *mp;
 mnt->mnt_parent = mnt;
 mnt->mnt_mountpoint = mnt->mnt.mnt_root;
 list_del_init(&mnt->mnt_child);
 hlist_del_init_rcu(&mnt->mnt_hash);
 hlist_del_init(&mnt->mnt_mp_list);
 mp = mnt->mnt_mp;
 mnt->mnt_mp = ((void*)0);
 return mp;
}
