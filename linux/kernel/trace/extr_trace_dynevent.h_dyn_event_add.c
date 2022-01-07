
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyn_event {int list; int ops; } ;


 int EINVAL ;
 int dyn_event_list ;
 int event_mutex ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline int dyn_event_add(struct dyn_event *ev)
{
 lockdep_assert_held(&event_mutex);

 if (!ev || !ev->ops)
  return -EINVAL;

 list_add_tail(&ev->list, &dyn_event_list);
 return 0;
}
