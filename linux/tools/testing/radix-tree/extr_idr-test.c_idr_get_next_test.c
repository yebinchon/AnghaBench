
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int dummy; } ;


 int DEFINE_IDR (int ) ;
 int GFP_KERNEL ;
 int assert (int) ;
 int idr ;
 int idr_alloc (int *,struct item*,int,int,int ) ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,int *) ;
 int idr_get_next (int *,int*) ;
 int idr_init_base (int *,int) ;
 struct item* item_create (int,int ) ;
 int item_idr_free ;

void idr_get_next_test(int base)
{
 unsigned long i;
 int nextid;
 DEFINE_IDR(idr);
 idr_init_base(&idr, base);

 int indices[] = {4, 7, 9, 15, 65, 128, 1000, 99999, 0};

 for(i = 0; indices[i]; i++) {
  struct item *item = item_create(indices[i], 0);
  assert(idr_alloc(&idr, item, indices[i], indices[i+1],
     GFP_KERNEL) == indices[i]);
 }

 for(i = 0, nextid = 0; indices[i]; i++) {
  idr_get_next(&idr, &nextid);
  assert(nextid == indices[i]);
  nextid++;
 }

 idr_for_each(&idr, item_idr_free, &idr);
 idr_destroy(&idr);
}
