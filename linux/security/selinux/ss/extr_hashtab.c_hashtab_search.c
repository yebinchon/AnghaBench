
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hashtab_node {void* datum; int key; struct hashtab_node* next; } ;
struct hashtab {size_t (* hash_value ) (struct hashtab*,void const*) ;scalar_t__ (* keycmp ) (struct hashtab*,void const*,int ) ;struct hashtab_node** htable; } ;


 size_t stub1 (struct hashtab*,void const*) ;
 scalar_t__ stub2 (struct hashtab*,void const*,int ) ;
 scalar_t__ stub3 (struct hashtab*,void const*,int ) ;

void *hashtab_search(struct hashtab *h, const void *key)
{
 u32 hvalue;
 struct hashtab_node *cur;

 if (!h)
  return ((void*)0);

 hvalue = h->hash_value(h, key);
 cur = h->htable[hvalue];
 while (cur && h->keycmp(h, key, cur->key) > 0)
  cur = cur->next;

 if (!cur || (h->keycmp(h, key, cur->key) != 0))
  return ((void*)0);

 return cur->datum;
}
