
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int GFP_KERNEL ;
 int find_idr ;
 int idr_alloc (int *,int ,int,int,int ) ;
 int idr_remove (int *,int) ;
 int rcu_register_thread () ;
 int rcu_unregister_thread () ;
 scalar_t__ time (int *) ;
 int xa_mk_value (int) ;

__attribute__((used)) static void *idr_throbber(void *arg)
{
 time_t start = time(((void*)0));
 int id = *(int *)arg;

 rcu_register_thread();
 do {
  idr_alloc(&find_idr, xa_mk_value(id), id, id + 1, GFP_KERNEL);
  idr_remove(&find_idr, id);
 } while (time(((void*)0)) < start + 10);
 rcu_unregister_thread();

 return ((void*)0);
}
