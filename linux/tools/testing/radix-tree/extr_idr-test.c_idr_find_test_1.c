
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int pthread_t ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int find_idr ;
 int idr_alloc (int *,void*,int,int,int ) ;
 void* idr_get_next (int *,int*) ;
 int idr_is_empty (int *) ;
 int idr_remove (int *,int) ;
 int idr_throbber ;
 int pthread_create (int *,int *,int ,int*) ;
 int pthread_join (int ,int *) ;
 scalar_t__ time (int *) ;
 void* xa_mk_value (int) ;

void idr_find_test_1(int anchor_id, int throbber_id)
{
 pthread_t throbber;
 time_t start = time(((void*)0));

 pthread_create(&throbber, ((void*)0), idr_throbber, &throbber_id);

 BUG_ON(idr_alloc(&find_idr, xa_mk_value(anchor_id), anchor_id,
    anchor_id + 1, GFP_KERNEL) != anchor_id);

 do {
  int id = 0;
  void *entry = idr_get_next(&find_idr, &id);
  BUG_ON(entry != xa_mk_value(id));
 } while (time(((void*)0)) < start + 11);

 pthread_join(throbber, ((void*)0));

 idr_remove(&find_idr, anchor_id);
 BUG_ON(!idr_is_empty(&find_idr));
}
