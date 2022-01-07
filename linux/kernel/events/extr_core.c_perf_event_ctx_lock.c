
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int dummy; } ;
struct perf_event {int dummy; } ;


 struct perf_event_context* perf_event_ctx_lock_nested (struct perf_event*,int ) ;

__attribute__((used)) static inline struct perf_event_context *
perf_event_ctx_lock(struct perf_event *event)
{
 return perf_event_ctx_lock_nested(event, 0);
}
