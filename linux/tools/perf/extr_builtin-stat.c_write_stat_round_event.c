
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int perf_event__synthesize_stat_round (int *,int ,int ,int ,int *) ;
 int process_synthesized_event ;

__attribute__((used)) static int write_stat_round_event(u64 tm, u64 type)
{
 return perf_event__synthesize_stat_round(((void*)0), tm, type,
       process_synthesized_event,
       ((void*)0));
}
