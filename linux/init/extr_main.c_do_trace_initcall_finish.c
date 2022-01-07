
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int initcall_t ;


 int initcall_calltime ;
 int initcall_debug ;
 int trace_initcall_finish_cb (int *,int ,int) ;

__attribute__((used)) static inline void do_trace_initcall_finish(initcall_t fn, int ret)
{
 if (!initcall_debug)
  return;
 trace_initcall_finish_cb(&initcall_calltime, fn, ret);
}
