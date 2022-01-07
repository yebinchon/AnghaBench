
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hashtab {size_t size; size_t (* hash_value ) (struct hashtab*,void const*) ;int (* keycmp ) (struct hashtab*,void const*,void const*) ;int ** htable; scalar_t__ nel; } ;


 int GFP_KERNEL ;
 int kfree (struct hashtab*) ;
 int ** kmalloc_array (size_t,int,int ) ;
 struct hashtab* kzalloc (int,int ) ;

struct hashtab *hashtab_create(u32 (*hash_value)(struct hashtab *h, const void *key),
          int (*keycmp)(struct hashtab *h, const void *key1, const void *key2),
          u32 size)
{
 struct hashtab *p;
 u32 i;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return p;

 p->size = size;
 p->nel = 0;
 p->hash_value = hash_value;
 p->keycmp = keycmp;
 p->htable = kmalloc_array(size, sizeof(*p->htable), GFP_KERNEL);
 if (!p->htable) {
  kfree(p);
  return ((void*)0);
 }

 for (i = 0; i < size; i++)
  p->htable[i] = ((void*)0);

 return p;
}
