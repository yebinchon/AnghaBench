
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callchain_recursion ;
 int put_recursion_context (int ,int) ;
 int this_cpu_ptr (int ) ;

__attribute__((used)) static void
put_callchain_entry(int rctx)
{
 put_recursion_context(this_cpu_ptr(callchain_recursion), rctx);
}
