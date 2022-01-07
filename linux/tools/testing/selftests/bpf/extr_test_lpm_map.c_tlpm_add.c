
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tlpm_node {size_t n_bits; int key; struct tlpm_node* next; } ;


 int assert (struct tlpm_node*) ;
 struct tlpm_node* malloc (int) ;
 int memcpy (int ,int const*,size_t) ;
 struct tlpm_node* tlpm_match (struct tlpm_node*,int const*,size_t) ;

__attribute__((used)) static struct tlpm_node *tlpm_add(struct tlpm_node *list,
      const uint8_t *key,
      size_t n_bits)
{
 struct tlpm_node *node;
 size_t n;

 n = (n_bits + 7) / 8;


 node = tlpm_match(list, key, n_bits);
 if (node && node->n_bits == n_bits) {
  memcpy(node->key, key, n);
  return list;
 }



 node = malloc(sizeof(*node) + n);
 assert(node);

 node->next = list;
 node->n_bits = n_bits;
 memcpy(node->key, key, n);

 return node;
}
