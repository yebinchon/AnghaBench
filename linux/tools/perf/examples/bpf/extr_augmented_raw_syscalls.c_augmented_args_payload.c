
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct augmented_args_payload {int dummy; } ;


 int augmented_args_tmp ;
 struct augmented_args_payload* bpf_map_lookup_elem (int *,int*) ;

__attribute__((used)) static inline struct augmented_args_payload *augmented_args_payload(void)
{
 int key = 0;
 return bpf_map_lookup_elem(&augmented_args_tmp, &key);
}
