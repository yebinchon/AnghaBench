
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int index; } ;


 int DEFINE_IDR (int ) ;
 struct item* DUMMY_PTR ;
 int GFP_KERNEL ;
 int assert (int) ;
 int idr ;
 int idr_alloc_cyclic (int *,struct item*,int,int,int ) ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,int *) ;
 int idr_remove (int *,int) ;
 struct item* item_create (unsigned long,int ) ;
 int item_idr_free ;

void idr_alloc_test(void)
{
 unsigned long i;
 DEFINE_IDR(idr);

 assert(idr_alloc_cyclic(&idr, DUMMY_PTR, 0, 0x4000, GFP_KERNEL) == 0);
 assert(idr_alloc_cyclic(&idr, DUMMY_PTR, 0x3ffd, 0x4000, GFP_KERNEL) == 0x3ffd);
 idr_remove(&idr, 0x3ffd);
 idr_remove(&idr, 0);

 for (i = 0x3ffe; i < 0x4003; i++) {
  int id;
  struct item *item;

  if (i < 0x4000)
   item = item_create(i, 0);
  else
   item = item_create(i - 0x3fff, 0);

  id = idr_alloc_cyclic(&idr, item, 1, 0x4000, GFP_KERNEL);
  assert(id == item->index);
 }

 idr_for_each(&idr, item_idr_free, &idr);
 idr_destroy(&idr);
}
