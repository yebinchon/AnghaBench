
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct dummy {int list; } ;


 int ALLOC_PERIOD ;
 int alloc_dwork ;
 struct dummy* dummy_alloc () ;
 int dummy_list ;
 int dummy_list_mutex ;
 int list_add (int *,int *) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void alloc_work_func(struct work_struct *work)
{
 struct dummy *d;

 d = dummy_alloc();
 if (!d)
  return;

 mutex_lock(&dummy_list_mutex);
 list_add(&d->list, &dummy_list);
 mutex_unlock(&dummy_list_mutex);

 schedule_delayed_work(&alloc_dwork,
  msecs_to_jiffies(1000 * ALLOC_PERIOD));
}
