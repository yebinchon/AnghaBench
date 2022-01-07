
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_id; } ;


 int GFP_KERNEL ;
 int ida_alloc (int *,int ) ;
 int mnt_id_ida ;

__attribute__((used)) static int mnt_alloc_id(struct mount *mnt)
{
 int res = ida_alloc(&mnt_id_ida, GFP_KERNEL);

 if (res < 0)
  return res;
 mnt->mnt_id = res;
 return 0;
}
