
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_NOEXIST ;
 scalar_t__ ENOENT ;
 int assert (int) ;
 int bpf_map_lookup_elem (int,unsigned long long*,unsigned long long*) ;
 int bpf_map_lookup_elem_with_ref_bit (int,unsigned long long,unsigned long long*) ;
 int bpf_map_update_elem (int,unsigned long long*,unsigned long long*,int ) ;
 scalar_t__ errno ;
 int nr_cpus ;

__attribute__((used)) static void do_test_lru_sanity5(unsigned long long last_key, int map_fd)
{
 unsigned long long key, value[nr_cpus];


 assert(!bpf_map_lookup_elem_with_ref_bit(map_fd, last_key, value));
 value[0] = 1234;

 key = last_key + 1;
 assert(!bpf_map_update_elem(map_fd, &key, value, BPF_NOEXIST));
 assert(!bpf_map_lookup_elem_with_ref_bit(map_fd, key, value));


 assert(bpf_map_lookup_elem(map_fd, &last_key, value) == -1 &&
        errno == ENOENT);
}
