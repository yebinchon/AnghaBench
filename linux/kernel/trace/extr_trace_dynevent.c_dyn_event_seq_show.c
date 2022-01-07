
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct dyn_event {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* show ) (struct seq_file*,struct dyn_event*) ;} ;


 int stub1 (struct seq_file*,struct dyn_event*) ;

__attribute__((used)) static int dyn_event_seq_show(struct seq_file *m, void *v)
{
 struct dyn_event *ev = v;

 if (ev && ev->ops)
  return ev->ops->show(m, ev);

 return 0;
}
