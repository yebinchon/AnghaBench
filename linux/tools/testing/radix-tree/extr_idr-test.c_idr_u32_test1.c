
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idr {int dummy; } ;


 int BUG_ON (int) ;
 void* DUMMY_PTR ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int INT_MAX ;
 int idr_alloc_u32 (struct idr*,void*,int*,int,int ) ;
 int idr_for_each (struct idr*,int ,int *) ;
 void* idr_get_next (struct idr*,int*) ;
 int idr_is_empty (struct idr*) ;
 void* idr_remove (struct idr*,int) ;
 int idr_u32_cb ;
 int printk (char*) ;

void idr_u32_test1(struct idr *idr, u32 handle)
{
 static bool warned = 0;
 u32 id = handle;
 int sid = 0;
 void *ptr;

 BUG_ON(idr_alloc_u32(idr, DUMMY_PTR, &id, id, GFP_KERNEL));
 BUG_ON(id != handle);
 BUG_ON(idr_alloc_u32(idr, DUMMY_PTR, &id, id, GFP_KERNEL) != -ENOSPC);
 BUG_ON(id != handle);
 if (!warned && id > INT_MAX)
  printk("vvv Ignore these warnings\n");
 ptr = idr_get_next(idr, &sid);
 if (id > INT_MAX) {
  BUG_ON(ptr != ((void*)0));
  BUG_ON(sid != 0);
 } else {
  BUG_ON(ptr != DUMMY_PTR);
  BUG_ON(sid != id);
 }
 idr_for_each(idr, idr_u32_cb, ((void*)0));
 if (!warned && id > INT_MAX) {
  printk("^^^ Warnings over\n");
  warned = 1;
 }
 BUG_ON(idr_remove(idr, id) != DUMMY_PTR);
 BUG_ON(!idr_is_empty(idr));
}
