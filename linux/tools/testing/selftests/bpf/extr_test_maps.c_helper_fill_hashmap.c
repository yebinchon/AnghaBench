
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int key ;


 int BPF_MAP_TYPE_HASH ;
 int BPF_NOEXIST ;
 int CHECK (int,char*,char*,int ,...) ;
 int bpf_create_map (int ,int,int,int,int ) ;
 int bpf_map_update_elem (int,long long*,long long*,int ) ;
 int errno ;
 int map_flags ;
 int strerror (int) ;

__attribute__((used)) static int helper_fill_hashmap(int max_entries)
{
 int i, fd, ret;
 long long key, value;

 fd = bpf_create_map(BPF_MAP_TYPE_HASH, sizeof(key), sizeof(value),
       max_entries, map_flags);
 CHECK(fd < 0,
       "failed to create hashmap",
       "err: %s, flags: 0x%x\n", strerror(errno), map_flags);

 for (i = 0; i < max_entries; i++) {
  key = i; value = key;
  ret = bpf_map_update_elem(fd, &key, &value, BPF_NOEXIST);
  CHECK(ret != 0,
        "can't update hashmap",
        "err: %s\n", strerror(ret));
 }

 return fd;
}
