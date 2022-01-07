
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountpoint {int dummy; } ;
struct mount {int mnt_hash; int mnt_mp_list; int mnt_child; struct mount* mnt_parent; struct mountpoint* mnt_mp; } ;


 int attach_mnt (struct mount*,struct mount*,struct mountpoint*) ;
 int hlist_del_init (int *) ;
 int hlist_del_init_rcu (int *) ;
 int list_del_init (int *) ;
 int mnt_add_count (struct mount*,int) ;
 int put_mountpoint (struct mountpoint*) ;

void mnt_change_mountpoint(struct mount *parent, struct mountpoint *mp, struct mount *mnt)
{
 struct mountpoint *old_mp = mnt->mnt_mp;
 struct mount *old_parent = mnt->mnt_parent;

 list_del_init(&mnt->mnt_child);
 hlist_del_init(&mnt->mnt_mp_list);
 hlist_del_init_rcu(&mnt->mnt_hash);

 attach_mnt(mnt, parent, mp);

 put_mountpoint(old_mp);
 mnt_add_count(old_parent, -1);
}
