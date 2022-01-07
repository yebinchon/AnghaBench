
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_arg_ref {long offset; } ;


 struct probe_trace_arg_ref* zalloc (int) ;

__attribute__((used)) static struct probe_trace_arg_ref *alloc_trace_arg_ref(long offs)
{
 struct probe_trace_arg_ref *ref;
 ref = zalloc(sizeof(struct probe_trace_arg_ref));
 if (ref != ((void*)0))
  ref->offset = offs;
 return ref;
}
