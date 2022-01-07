
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {scalar_t__ mnt_group_id; } ;


 int ida_free (int *,scalar_t__) ;
 int mnt_group_ida ;

void mnt_release_group_id(struct mount *mnt)
{
 ida_free(&mnt_group_ida, mnt->mnt_group_id);
 mnt->mnt_group_id = 0;
}
