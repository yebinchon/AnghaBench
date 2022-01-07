
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {int * bpf_obj; } ;
struct bpf_map {int dummy; } ;


 struct bpf_map* bpf_object__find_map_by_name (int *,char const*) ;

__attribute__((used)) static struct bpf_map *trace__find_bpf_map_by_name(struct trace *trace, const char *name)
{
 if (trace->bpf_obj == ((void*)0))
  return ((void*)0);

 return bpf_object__find_map_by_name(trace->bpf_obj, name);
}
