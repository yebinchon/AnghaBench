
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebitmap_node {struct ebitmap_node* next; int maps; int startbit; } ;
struct ebitmap {int highbit; struct ebitmap_node* node; } ;


 int EBITMAP_SIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int ebitmap_destroy (struct ebitmap*) ;
 int ebitmap_init (struct ebitmap*) ;
 int ebitmap_node_cachep ;
 struct ebitmap_node* kmem_cache_zalloc (int ,int ) ;
 int memcpy (int ,int ,int) ;

int ebitmap_cpy(struct ebitmap *dst, struct ebitmap *src)
{
 struct ebitmap_node *n, *new, *prev;

 ebitmap_init(dst);
 n = src->node;
 prev = ((void*)0);
 while (n) {
  new = kmem_cache_zalloc(ebitmap_node_cachep, GFP_ATOMIC);
  if (!new) {
   ebitmap_destroy(dst);
   return -ENOMEM;
  }
  new->startbit = n->startbit;
  memcpy(new->maps, n->maps, EBITMAP_SIZE / 8);
  new->next = ((void*)0);
  if (prev)
   prev->next = new;
  else
   dst->node = new;
  prev = new;
  n = n->next;
 }

 dst->highbit = src->highbit;
 return 0;
}
