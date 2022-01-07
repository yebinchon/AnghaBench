
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trace_probe {TYPE_3__* event; } ;
struct TYPE_5__ {TYPE_1__* class; } ;
struct TYPE_6__ {TYPE_2__ call; } ;
struct TYPE_4__ {char const* system; } ;



__attribute__((used)) static inline const char *trace_probe_group_name(struct trace_probe *tp)
{
 return tp->event->call.class->system;
}
