
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountpoint {int m_list; int m_dentry; int m_count; } ;
struct mount {int mnt_mp_list; struct mountpoint* mnt_mp; struct mount* mnt_parent; int mnt_mountpoint; } ;


 int hlist_add_head (int *,int *) ;
 int mnt_add_count (struct mount*,int) ;

void mnt_set_mountpoint(struct mount *mnt,
   struct mountpoint *mp,
   struct mount *child_mnt)
{
 mp->m_count++;
 mnt_add_count(mnt, 1);
 child_mnt->mnt_mountpoint = mp->m_dentry;
 child_mnt->mnt_parent = mnt;
 child_mnt->mnt_mp = mp;
 hlist_add_head(&child_mnt->mnt_mp_list, &mp->m_list);
}
