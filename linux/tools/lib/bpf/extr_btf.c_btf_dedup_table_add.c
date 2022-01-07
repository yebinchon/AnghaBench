
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dedup {int dedup_table; } ;
typedef scalar_t__ __u32 ;


 int hashmap__append (int ,void*,void*) ;

__attribute__((used)) static int btf_dedup_table_add(struct btf_dedup *d, long hash, __u32 type_id)
{
 return hashmap__append(d->dedup_table,
          (void *)hash, (void *)(long)type_id);
}
