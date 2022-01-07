
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {struct tracepoint* name; } ;


 int kfree (struct tracepoint*) ;

__attribute__((used)) static void free_synth_tracepoint(struct tracepoint *tp)
{
 if (!tp)
  return;

 kfree(tp->name);
 kfree(tp);
}
