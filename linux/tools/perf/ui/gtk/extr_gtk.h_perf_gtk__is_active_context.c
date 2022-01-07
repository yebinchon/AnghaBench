
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_gtk_context {scalar_t__ main_window; } ;



__attribute__((used)) static inline bool perf_gtk__is_active_context(struct perf_gtk_context *ctx)
{
 return ctx && ctx->main_window;
}
