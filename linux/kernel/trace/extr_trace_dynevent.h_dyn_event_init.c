
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyn_event_operations {int dummy; } ;
struct dyn_event {struct dyn_event_operations* ops; int list; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static inline
int dyn_event_init(struct dyn_event *ev, struct dyn_event_operations *ops)
{
 if (!ev || !ops)
  return -EINVAL;

 INIT_LIST_HEAD(&ev->list);
 ev->ops = ops;
 return 0;
}
