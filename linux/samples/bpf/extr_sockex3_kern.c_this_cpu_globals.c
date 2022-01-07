
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct globals {int dummy; } ;


 int bpf_get_smp_processor_id () ;
 struct globals* bpf_map_lookup_elem (int *,int *) ;
 int percpu_map ;

__attribute__((used)) static struct globals *this_cpu_globals(void)
{
 u32 key = bpf_get_smp_processor_id();

 return bpf_map_lookup_elem(&percpu_map, &key);
}
