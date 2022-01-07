
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct btf_dedup {scalar_t__* map; } ;


 scalar_t__ BTF_MAX_NR_TYPES ;

__attribute__((used)) static inline bool is_type_mapped(struct btf_dedup *d, uint32_t type_id)
{
 return d->map[type_id] <= BTF_MAX_NR_TYPES;
}
