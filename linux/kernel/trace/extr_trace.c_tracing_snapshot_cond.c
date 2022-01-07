
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int WARN_ONCE (int,char*) ;

void tracing_snapshot_cond(struct trace_array *tr, void *cond_data)
{
 WARN_ONCE(1, "Snapshot feature not enabled, but internal conditional snapshot used");
}
