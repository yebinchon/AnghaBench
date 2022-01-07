
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pair {long long val; int ip; } ;
typedef int __u64 ;


 scalar_t__ bpf_map_get_next_key (int ,int*,int*) ;
 int bpf_map_lookup_elem (int ,int*,struct pair*) ;
 int * map_fd ;
 int printf (char*,int,long long,int ) ;
 long long time_get_ns () ;
 int write (int,char*,int) ;

__attribute__((used)) static void print_old_objects(int fd)
{
 long long val = time_get_ns();
 __u64 key, next_key;
 struct pair v;

 key = write(1, "\e[1;1H\e[2J", 12);

 key = -1;
 while (bpf_map_get_next_key(map_fd[0], &key, &next_key) == 0) {
  bpf_map_lookup_elem(map_fd[0], &next_key, &v);
  key = next_key;
  if (val - v.val < 1000000000ll)

   continue;
  printf("obj 0x%llx is %2lldsec old was allocated at ip %llx\n",
         next_key, (val - v.val) / 1000000000ll, v.ip);
 }
}
