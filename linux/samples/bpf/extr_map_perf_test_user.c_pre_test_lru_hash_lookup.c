
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int BPF_NOEXIST ;
 int bpf_map_update_elem (int,scalar_t__*,long*,int ) ;
 size_t lru_hash_lookup_idx ;
 scalar_t__ lru_hash_lookup_test_entries ;
 int* map_fd ;
 scalar_t__ num_map_entries ;

__attribute__((used)) static int pre_test_lru_hash_lookup(int tasks)
{
 int fd = map_fd[lru_hash_lookup_idx];
 uint32_t key;
 long val = 1;
 int ret;

 if (num_map_entries > lru_hash_lookup_test_entries)
  lru_hash_lookup_test_entries = num_map_entries;
 for (key = 0; key < lru_hash_lookup_test_entries; key++) {
  ret = bpf_map_update_elem(fd, &key, &val, BPF_NOEXIST);
  if (ret)
   return ret;
 }

 return 0;
}
