
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;


 int array ;
 long* bpf_map_lookup_elem (int *,int *) ;
 int htab ;

int func()
{
 __u64 key64 = 0;
 __u32 key = 0;
 long *value;

 value = bpf_map_lookup_elem(&htab, &key);
 if (!value)
  return 1;
 value = bpf_map_lookup_elem(&array, &key64);
 if (!value)
  return 1;

 return 0;
}
