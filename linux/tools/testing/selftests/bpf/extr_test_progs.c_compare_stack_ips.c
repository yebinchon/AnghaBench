
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 scalar_t__ ENOENT ;
 scalar_t__ bpf_map_get_next_key (int,int *,int *) ;
 int bpf_map_lookup_elem (int,int *,char*) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (int) ;

int compare_stack_ips(int smap_fd, int amap_fd, int stack_trace_len)
{
 __u32 key, next_key, *cur_key_p, *next_key_p;
 char *val_buf1, *val_buf2;
 int i, err = 0;

 val_buf1 = malloc(stack_trace_len);
 val_buf2 = malloc(stack_trace_len);
 cur_key_p = ((void*)0);
 next_key_p = &key;
 while (bpf_map_get_next_key(smap_fd, cur_key_p, next_key_p) == 0) {
  err = bpf_map_lookup_elem(smap_fd, next_key_p, val_buf1);
  if (err)
   goto out;
  err = bpf_map_lookup_elem(amap_fd, next_key_p, val_buf2);
  if (err)
   goto out;
  for (i = 0; i < stack_trace_len; i++) {
   if (val_buf1[i] != val_buf2[i]) {
    err = -1;
    goto out;
   }
  }
  key = *next_key_p;
  cur_key_p = &key;
  next_key_p = &next_key;
 }
 if (errno != ENOENT)
  err = -1;

out:
 free(val_buf1);
 free(val_buf2);
 return err;
}
