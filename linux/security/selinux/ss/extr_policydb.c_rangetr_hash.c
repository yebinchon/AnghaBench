
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct range_trans {int source_type; int target_type; int target_class; } ;
struct hashtab {int size; } ;



__attribute__((used)) static u32 rangetr_hash(struct hashtab *h, const void *k)
{
 const struct range_trans *key = k;

 return (key->source_type + (key->target_type << 3) +
  (key->target_class << 5)) & (h->size - 1);
}
