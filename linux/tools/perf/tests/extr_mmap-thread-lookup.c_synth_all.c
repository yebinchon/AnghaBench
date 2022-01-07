
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int dummy; } ;


 int perf_event__process ;
 int perf_event__synthesize_threads (int *,int ,struct machine*,int ,int) ;

__attribute__((used)) static int synth_all(struct machine *machine)
{
 return perf_event__synthesize_threads(((void*)0),
           perf_event__process,
           machine, 0, 1);
}
