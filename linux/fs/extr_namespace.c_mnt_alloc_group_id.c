
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_group_id; } ;


 int GFP_KERNEL ;
 int ida_alloc_min (int *,int,int ) ;
 int mnt_group_ida ;

__attribute__((used)) static int mnt_alloc_group_id(struct mount *mnt)
{
 int res = ida_alloc_min(&mnt_group_ida, 1, GFP_KERNEL);

 if (res < 0)
  return res;
 mnt->mnt_group_id = res;
 return 0;
}
