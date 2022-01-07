
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_t {int dummy; } ;
typedef int __u64 ;


 scalar_t__ bpf_map_get_next_key (int,struct key_t*,struct key_t*) ;
 int bpf_map_lookup_elem (int,struct key_t*,int *) ;
 int print_stack (struct key_t*,int ) ;

__attribute__((used)) static void print_stacks(int fd)
{
 struct key_t key = {}, next_key;
 __u64 value;

 while (bpf_map_get_next_key(fd, &key, &next_key) == 0) {
  bpf_map_lookup_elem(fd, &next_key, &value);
  print_stack(&next_key, value);
  key = next_key;
 }
}
