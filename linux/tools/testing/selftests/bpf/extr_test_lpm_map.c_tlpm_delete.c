
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tlpm_node {size_t n_bits; struct tlpm_node* next; } ;


 int assert (int ) ;
 int free (struct tlpm_node*) ;
 struct tlpm_node* tlpm_match (struct tlpm_node*,int const*,size_t) ;

__attribute__((used)) static struct tlpm_node *tlpm_delete(struct tlpm_node *list,
         const uint8_t *key,
         size_t n_bits)
{
 struct tlpm_node *best = tlpm_match(list, key, n_bits);
 struct tlpm_node *node;

 if (!best || best->n_bits != n_bits)
  return list;

 if (best == list) {
  node = best->next;
  free(best);
  return node;
 }

 for (node = list; node; node = node->next) {
  if (node->next == best) {
   node->next = best->next;
   free(best);
   return list;
  }
 }

 assert(0);
 return list;
}
