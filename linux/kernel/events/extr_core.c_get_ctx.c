
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int refcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void get_ctx(struct perf_event_context *ctx)
{
 refcount_inc(&ctx->refcount);
}
