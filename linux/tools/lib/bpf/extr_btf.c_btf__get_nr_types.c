
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int nr_types; } ;
typedef int __u32 ;



__u32 btf__get_nr_types(const struct btf *btf)
{
 return btf->nr_types;
}
