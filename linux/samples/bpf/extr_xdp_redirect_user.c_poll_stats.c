
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int prev ;
typedef int __u64 ;
typedef int __u32 ;


 int assert (int) ;
 scalar_t__ bpf_map_lookup_elem (int ,int *,int*) ;
 unsigned int bpf_num_possible_cpus () ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int printf (char*,int,int) ;
 int rxcnt_map_fd ;
 int sleep (int) ;

__attribute__((used)) static void poll_stats(int interval, int ifindex)
{
 unsigned int nr_cpus = bpf_num_possible_cpus();
 __u64 values[nr_cpus], prev[nr_cpus];

 memset(prev, 0, sizeof(prev));

 while (1) {
  __u64 sum = 0;
  __u32 key = 0;
  int i;

  sleep(interval);
  assert(bpf_map_lookup_elem(rxcnt_map_fd, &key, values) == 0);
  for (i = 0; i < nr_cpus; i++)
   sum += (values[i] - prev[i]);
  if (sum)
   printf("ifindex %i: %10llu pkt/s\n",
          ifindex, sum / interval);
  memcpy(prev, values, sizeof(values));
 }
}
