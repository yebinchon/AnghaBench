
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_stack_build_id {int dummy; } ;
typedef int __u32 ;


 scalar_t__ ENOENT ;
 int PERF_MAX_STACK_DEPTH ;
 int bpf_map_get_next_key (int,int *,int *) ;
 int bpf_map_lookup_elem (int,int *,char*) ;
 scalar_t__ errno ;

int compare_map_keys(int map1_fd, int map2_fd)
{
 __u32 key, next_key;
 char val_buf[PERF_MAX_STACK_DEPTH *
       sizeof(struct bpf_stack_build_id)];
 int err;

 err = bpf_map_get_next_key(map1_fd, ((void*)0), &key);
 if (err)
  return err;
 err = bpf_map_lookup_elem(map2_fd, &key, val_buf);
 if (err)
  return err;

 while (bpf_map_get_next_key(map1_fd, &key, &next_key) == 0) {
  err = bpf_map_lookup_elem(map2_fd, &next_key, val_buf);
  if (err)
   return err;

  key = next_key;
 }
 if (errno != ENOENT)
  return -1;

 return 0;
}
