
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {scalar_t__ mnt_group_id; } ;


 int IS_MNT_SHARED (struct mount*) ;
 int mnt_release_group_id (struct mount*) ;
 struct mount* next_mnt (struct mount*,struct mount*) ;

__attribute__((used)) static void cleanup_group_ids(struct mount *mnt, struct mount *end)
{
 struct mount *p;

 for (p = mnt; p != end; p = next_mnt(p, mnt)) {
  if (p->mnt_group_id && !IS_MNT_SHARED(p))
   mnt_release_group_id(p);
 }
}
