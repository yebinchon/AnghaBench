
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_u_hnode {int handle_idr; } ;


 int GFP_KERNEL ;
 scalar_t__ idr_alloc_u32 (int *,int *,int*,int,int ) ;

__attribute__((used)) static u32 gen_new_kid(struct tc_u_hnode *ht, u32 htid)
{
 u32 index = htid | 0x800;
 u32 max = htid | 0xFFF;

 if (idr_alloc_u32(&ht->handle_idr, ((void*)0), &index, max, GFP_KERNEL)) {
  index = htid + 1;
  if (idr_alloc_u32(&ht->handle_idr, ((void*)0), &index, max,
     GFP_KERNEL))
   index = max;
 }

 return index;
}
