
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_probe {TYPE_1__* event; } ;
struct TYPE_2__ {int files; } ;


 int list_is_singular (int *) ;

__attribute__((used)) static inline bool trace_probe_has_single_file(struct trace_probe *tp)
{
 return !!list_is_singular(&tp->event->files);
}
