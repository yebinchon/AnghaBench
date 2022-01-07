
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct datarec {int issue; int dropped; int processed; } ;
struct cpumap_kthread_ctx {scalar_t__ sched; scalar_t__ drops; scalar_t__ processed; } ;


 struct datarec* bpf_map_lookup_elem (int *,int *) ;
 int cpumap_kthread_cnt ;

int trace_xdp_cpumap_kthread(struct cpumap_kthread_ctx *ctx)
{
 struct datarec *rec;
 u32 key = 0;

 rec = bpf_map_lookup_elem(&cpumap_kthread_cnt, &key);
 if (!rec)
  return 0;
 rec->processed += ctx->processed;
 rec->dropped += ctx->drops;


 if (ctx->sched)
  rec->issue++;

 return 0;
}
