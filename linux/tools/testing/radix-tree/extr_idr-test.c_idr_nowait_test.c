
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int dummy; } ;


 int DEFINE_IDR (int ) ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int assert (int) ;
 int idr ;
 unsigned int idr_alloc (int *,struct item*,unsigned int,unsigned int,int ) ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,int *) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 struct item* item_create (unsigned int,int ) ;
 int item_idr_free ;

void idr_nowait_test(void)
{
 unsigned int i;
 DEFINE_IDR(idr);

 idr_preload(GFP_KERNEL);

 for (i = 0; i < 3; i++) {
  struct item *item = item_create(i, 0);
  assert(idr_alloc(&idr, item, i, i + 1, GFP_NOWAIT) == i);
 }

 idr_preload_end();

 idr_for_each(&idr, item_idr_free, &idr);
 idr_destroy(&idr);
}
