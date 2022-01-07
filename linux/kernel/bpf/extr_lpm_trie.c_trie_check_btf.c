
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int info; } ;
struct btf {int dummy; } ;
struct bpf_map {int dummy; } ;


 scalar_t__ BTF_INFO_KIND (int ) ;
 scalar_t__ BTF_KIND_STRUCT ;
 int EINVAL ;

__attribute__((used)) static int trie_check_btf(const struct bpf_map *map,
     const struct btf *btf,
     const struct btf_type *key_type,
     const struct btf_type *value_type)
{

 return BTF_INFO_KIND(key_type->info) != BTF_KIND_STRUCT ?
        -EINVAL : 0;
}
