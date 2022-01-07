
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpm_trie_node {size_t data; scalar_t__ flags; } ;
struct TYPE_2__ {size_t value_size; int numa_node; } ;
struct lpm_trie {size_t data_size; TYPE_1__ map; } ;


 int GFP_ATOMIC ;
 int __GFP_NOWARN ;
 struct lpm_trie_node* kmalloc_node (size_t,int,int ) ;
 int memcpy (size_t,void const*,size_t) ;

__attribute__((used)) static struct lpm_trie_node *lpm_trie_node_alloc(const struct lpm_trie *trie,
       const void *value)
{
 struct lpm_trie_node *node;
 size_t size = sizeof(struct lpm_trie_node) + trie->data_size;

 if (value)
  size += trie->map.value_size;

 node = kmalloc_node(size, GFP_ATOMIC | __GFP_NOWARN,
       trie->map.numa_node);
 if (!node)
  return ((void*)0);

 node->flags = 0;

 if (value)
  memcpy(node->data + trie->data_size, value,
         trie->map.value_size);

 return node;
}
