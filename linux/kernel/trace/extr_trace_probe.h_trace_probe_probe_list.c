
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_probe {TYPE_1__* event; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head probes; } ;



__attribute__((used)) static inline struct list_head *trace_probe_probe_list(struct trace_probe *tp)
{
 return &tp->event->probes;
}
