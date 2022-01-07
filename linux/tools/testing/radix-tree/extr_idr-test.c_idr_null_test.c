
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFINE_IDR (int ) ;
 int * DUMMY_PTR ;
 int ENOENT ;
 int * ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int assert (int) ;
 int idr ;
 int idr_alloc (int *,int *,int,int ,int ) ;
 int idr_destroy (int *) ;
 int idr_is_empty (int *) ;
 int idr_remove (int *,int) ;
 int * idr_replace (int *,int *,int) ;

void idr_null_test(void)
{
 int i;
 DEFINE_IDR(idr);

 assert(idr_is_empty(&idr));

 assert(idr_alloc(&idr, ((void*)0), 0, 0, GFP_KERNEL) == 0);
 assert(!idr_is_empty(&idr));
 idr_remove(&idr, 0);
 assert(idr_is_empty(&idr));

 assert(idr_alloc(&idr, ((void*)0), 0, 0, GFP_KERNEL) == 0);
 assert(!idr_is_empty(&idr));
 idr_destroy(&idr);
 assert(idr_is_empty(&idr));

 for (i = 0; i < 10; i++) {
  assert(idr_alloc(&idr, ((void*)0), 0, 0, GFP_KERNEL) == i);
 }

 assert(idr_replace(&idr, DUMMY_PTR, 3) == ((void*)0));
 assert(idr_replace(&idr, DUMMY_PTR, 4) == ((void*)0));
 assert(idr_replace(&idr, ((void*)0), 4) == DUMMY_PTR);
 assert(idr_replace(&idr, DUMMY_PTR, 11) == ERR_PTR(-ENOENT));
 idr_remove(&idr, 5);
 assert(idr_alloc(&idr, ((void*)0), 0, 0, GFP_KERNEL) == 5);
 idr_remove(&idr, 5);

 for (i = 0; i < 9; i++) {
  idr_remove(&idr, i);
  assert(!idr_is_empty(&idr));
 }
 idr_remove(&idr, 8);
 assert(!idr_is_empty(&idr));
 idr_remove(&idr, 9);
 assert(idr_is_empty(&idr));

 assert(idr_alloc(&idr, ((void*)0), 0, 0, GFP_KERNEL) == 0);
 assert(idr_replace(&idr, DUMMY_PTR, 3) == ERR_PTR(-ENOENT));
 assert(idr_replace(&idr, DUMMY_PTR, 0) == ((void*)0));
 assert(idr_replace(&idr, ((void*)0), 0) == DUMMY_PTR);

 idr_destroy(&idr);
 assert(idr_is_empty(&idr));

 for (i = 1; i < 10; i++) {
  assert(idr_alloc(&idr, ((void*)0), 1, 0, GFP_KERNEL) == i);
 }

 idr_destroy(&idr);
 assert(idr_is_empty(&idr));
}
