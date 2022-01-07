
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_ext {void const* data; int data_size; } ;
typedef int __u32 ;



const void *btf_ext__get_raw_data(const struct btf_ext *btf_ext, __u32 *size)
{
 *size = btf_ext->data_size;
 return btf_ext->data;
}
