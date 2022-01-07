
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tlpm_node {size_t n_bits; int* key; struct tlpm_node* next; } ;



__attribute__((used)) static struct tlpm_node *tlpm_match(struct tlpm_node *list,
        const uint8_t *key,
        size_t n_bits)
{
 struct tlpm_node *best = ((void*)0);
 size_t i;







 for ( ; list; list = list->next) {
  for (i = 0; i < n_bits && i < list->n_bits; ++i) {
   if ((key[i / 8] & (1 << (7 - i % 8))) !=
       (list->key[i / 8] & (1 << (7 - i % 8))))
    break;
  }

  if (i >= list->n_bits) {
   if (!best || i > best->n_bits)
    best = list;
  }
 }

 return best;
}
