
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_event_context {scalar_t__ timestamp; int time; } ;


 scalar_t__ perf_clock () ;

__attribute__((used)) static void update_context_time(struct perf_event_context *ctx)
{
 u64 now = perf_clock();

 ctx->time += now - ctx->timestamp;
 ctx->timestamp = now;
}
