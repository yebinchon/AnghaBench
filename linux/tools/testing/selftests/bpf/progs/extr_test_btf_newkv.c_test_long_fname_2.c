
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv_counts {int v6; } ;
struct dummy_tracepoint_args {int sock; } ;


 struct ipv_counts* bpf_map_lookup_elem (int *,int*) ;
 int btf_map ;
 int btf_map_legacy ;

__attribute__((used)) __attribute__((noinline))
static int test_long_fname_2(struct dummy_tracepoint_args *arg)
{
 struct ipv_counts *counts;
 int key = 0;

 if (!arg->sock)
  return 0;

 counts = bpf_map_lookup_elem(&btf_map, &key);
 if (!counts)
  return 0;

 counts->v6++;


 counts = bpf_map_lookup_elem(&btf_map_legacy, &key);
 if (!counts)
  return 0;

 return 0;
}
