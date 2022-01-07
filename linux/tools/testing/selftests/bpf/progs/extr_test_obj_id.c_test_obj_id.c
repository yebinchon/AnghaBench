
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {int dummy; } ;
typedef int __u64 ;
typedef int __u32 ;


 int TC_ACT_OK ;
 int * bpf_map_lookup_elem (int *,int *) ;
 int test_map_id ;

int test_obj_id(struct __sk_buff *skb)
{
 __u32 key = 0;
 __u64 *value;

 value = bpf_map_lookup_elem(&test_map_id, &key);

 return TC_ACT_OK;
}
