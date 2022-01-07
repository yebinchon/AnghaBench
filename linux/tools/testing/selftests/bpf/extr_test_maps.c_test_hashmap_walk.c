
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_EXIST ;
 int assert (int) ;
 scalar_t__ bpf_map_get_next_key (int,long long*,long long*) ;
 scalar_t__ bpf_map_lookup_elem (int,long long*,long long*) ;
 scalar_t__ bpf_map_update_elem (int,long long*,long long*,int ) ;
 int close (int) ;
 int helper_fill_hashmap (int) ;

__attribute__((used)) static void test_hashmap_walk(unsigned int task, void *data)
{
 int fd, i, max_entries = 1000;
 long long key, value, next_key;
 bool next_key_valid = 1;

 fd = helper_fill_hashmap(max_entries);

 for (i = 0; bpf_map_get_next_key(fd, !i ? ((void*)0) : &key,
      &next_key) == 0; i++) {
  key = next_key;
  assert(bpf_map_lookup_elem(fd, &key, &value) == 0);
 }

 assert(i == max_entries);

 assert(bpf_map_get_next_key(fd, ((void*)0), &key) == 0);
 for (i = 0; next_key_valid; i++) {
  next_key_valid = bpf_map_get_next_key(fd, &key, &next_key) == 0;
  assert(bpf_map_lookup_elem(fd, &key, &value) == 0);
  value++;
  assert(bpf_map_update_elem(fd, &key, &value, BPF_EXIST) == 0);
  key = next_key;
 }

 assert(i == max_entries);

 for (i = 0; bpf_map_get_next_key(fd, !i ? ((void*)0) : &key,
      &next_key) == 0; i++) {
  key = next_key;
  assert(bpf_map_lookup_elem(fd, &key, &value) == 0);
  assert(value - 1 == key);
 }

 assert(i == max_entries);
 close(fd);
}
