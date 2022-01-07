
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_F_ZERO_SEED ;
 int CHECK (int,char*,char*,int,...) ;
 scalar_t__ bpf_map_get_next_key (int,void*,long long*) ;
 int close (int) ;
 int helper_fill_hashmap (int) ;
 int map_flags ;

__attribute__((used)) static void test_hashmap_zero_seed(void)
{
 int i, first, second, old_flags;
 long long key, next_first, next_second;

 old_flags = map_flags;
 map_flags |= BPF_F_ZERO_SEED;

 first = helper_fill_hashmap(3);
 second = helper_fill_hashmap(3);

 for (i = 0; ; i++) {
  void *key_ptr = !i ? ((void*)0) : &key;

  if (bpf_map_get_next_key(first, key_ptr, &next_first) != 0)
   break;

  CHECK(bpf_map_get_next_key(second, key_ptr, &next_second) != 0,
        "next_key for second map must succeed",
        "key_ptr: %p", key_ptr);
  CHECK(next_first != next_second,
        "keys must match",
        "i: %d first: %lld second: %lld\n", i,
        next_first, next_second);

  key = next_first;
 }

 map_flags = old_flags;
 close(first);
 close(second);
}
