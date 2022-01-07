
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int time_t ;
typedef int __u64 ;


 int STATS_INTERVAL_S ;
 int assert (int) ;
 scalar_t__ bpf_map_lookup_elem (unsigned int,int*,int *) ;
 int printf (char*,int ) ;
 int sleep (int ) ;
 unsigned int time (int *) ;

__attribute__((used)) static void poll_stats(unsigned int map_fd, unsigned int kill_after_s)
{
 time_t started_at = time(((void*)0));
 __u64 value = 0;
 int key = 0;


 while (!kill_after_s || time(((void*)0)) - started_at <= kill_after_s) {
  sleep(STATS_INTERVAL_S);

  assert(bpf_map_lookup_elem(map_fd, &key, &value) == 0);

  printf("icmp \"packet too big\" sent: %10llu pkts\n", value);
 }
}
