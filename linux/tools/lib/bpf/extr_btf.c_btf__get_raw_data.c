
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {void const* data; int data_size; } ;
typedef int __u32 ;



const void *btf__get_raw_data(const struct btf *btf, __u32 *size)
{
 *size = btf->data_size;
 return btf->data;
}
