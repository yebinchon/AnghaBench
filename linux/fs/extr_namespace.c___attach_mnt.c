
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_mounts; int mnt_child; int mnt_mountpoint; int mnt; int mnt_hash; } ;


 int hlist_add_head_rcu (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int m_hash (int *,int ) ;

__attribute__((used)) static void __attach_mnt(struct mount *mnt, struct mount *parent)
{
 hlist_add_head_rcu(&mnt->mnt_hash,
      m_hash(&parent->mnt, mnt->mnt_mountpoint));
 list_add_tail(&mnt->mnt_child, &parent->mnt_mounts);
}
