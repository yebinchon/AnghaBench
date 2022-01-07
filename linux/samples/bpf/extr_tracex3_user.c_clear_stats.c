
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int __u64 ;
typedef scalar_t__ __u32 ;


 int BPF_ANY ;
 scalar_t__ SLOTS ;
 int bpf_map_update_elem (int,scalar_t__*,int *,int ) ;
 unsigned int bpf_num_possible_cpus () ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void clear_stats(int fd)
{
 unsigned int nr_cpus = bpf_num_possible_cpus();
 __u64 values[nr_cpus];
 __u32 key;

 memset(values, 0, sizeof(values));
 for (key = 0; key < SLOTS; key++)
  bpf_map_update_elem(fd, &key, values, BPF_ANY);
}
