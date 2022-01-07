
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_trans {int source_type; int target_type; int target_class; } ;
struct hashtab {int dummy; } ;



__attribute__((used)) static int rangetr_cmp(struct hashtab *h, const void *k1, const void *k2)
{
 const struct range_trans *key1 = k1, *key2 = k2;
 int v;

 v = key1->source_type - key2->source_type;
 if (v)
  return v;

 v = key1->target_type - key2->target_type;
 if (v)
  return v;

 v = key1->target_class - key2->target_class;

 return v;
}
