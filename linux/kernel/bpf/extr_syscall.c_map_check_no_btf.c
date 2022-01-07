
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf {int dummy; } ;
struct bpf_map {int dummy; } ;


 int ENOTSUPP ;

int map_check_no_btf(const struct bpf_map *map,
       const struct btf *btf,
       const struct btf_type *key_type,
       const struct btf_type *value_type)
{
 return -ENOTSUPP;
}
