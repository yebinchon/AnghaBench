
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_cpu_map_entry {int refcnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void get_cpu_map_entry(struct bpf_cpu_map_entry *rcpu)
{
 atomic_inc(&rcpu->refcnt);
}
