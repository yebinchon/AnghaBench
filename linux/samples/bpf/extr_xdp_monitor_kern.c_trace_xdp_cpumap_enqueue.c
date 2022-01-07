
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct datarec {int info; int dropped; int processed; } ;
struct cpumap_enqueue_ctx {scalar_t__ to_cpu; scalar_t__ processed; scalar_t__ drops; } ;


 scalar_t__ MAX_CPUS ;
 struct datarec* bpf_map_lookup_elem (int *,scalar_t__*) ;
 int cpumap_enqueue_cnt ;

int trace_xdp_cpumap_enqueue(struct cpumap_enqueue_ctx *ctx)
{
 u32 to_cpu = ctx->to_cpu;
 struct datarec *rec;

 if (to_cpu >= MAX_CPUS)
  return 1;

 rec = bpf_map_lookup_elem(&cpumap_enqueue_cnt, &to_cpu);
 if (!rec)
  return 0;
 rec->processed += ctx->processed;
 rec->dropped += ctx->drops;


 if (ctx->processed > 0)
  rec->info += 1;

 return 0;
}
