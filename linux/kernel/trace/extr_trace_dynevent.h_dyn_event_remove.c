
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyn_event {int list; } ;


 int event_mutex ;
 int list_del_init (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void dyn_event_remove(struct dyn_event *ev)
{
 lockdep_assert_held(&event_mutex);
 list_del_init(&ev->list);
}
