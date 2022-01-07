
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebitmap_node {unsigned long startbit; struct ebitmap_node* next; int maps; } ;
struct ebitmap {unsigned long highbit; struct ebitmap_node* node; } ;


 unsigned long EBITMAP_SIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int ebitmap_node_cachep ;
 int ebitmap_node_clr_bit (struct ebitmap_node*,unsigned long) ;
 int ebitmap_node_set_bit (struct ebitmap_node*,unsigned long) ;
 unsigned int find_first_bit (int ,unsigned long) ;
 int kmem_cache_free (int ,struct ebitmap_node*) ;
 struct ebitmap_node* kmem_cache_zalloc (int ,int ) ;

int ebitmap_set_bit(struct ebitmap *e, unsigned long bit, int value)
{
 struct ebitmap_node *n, *prev, *new;

 prev = ((void*)0);
 n = e->node;
 while (n && n->startbit <= bit) {
  if ((n->startbit + EBITMAP_SIZE) > bit) {
   if (value) {
    ebitmap_node_set_bit(n, bit);
   } else {
    unsigned int s;

    ebitmap_node_clr_bit(n, bit);

    s = find_first_bit(n->maps, EBITMAP_SIZE);
    if (s < EBITMAP_SIZE)
     return 0;


    if (!n->next) {




     if (prev)
      e->highbit = prev->startbit
            + EBITMAP_SIZE;
     else
      e->highbit = 0;
    }
    if (prev)
     prev->next = n->next;
    else
     e->node = n->next;
    kmem_cache_free(ebitmap_node_cachep, n);
   }
   return 0;
  }
  prev = n;
  n = n->next;
 }

 if (!value)
  return 0;

 new = kmem_cache_zalloc(ebitmap_node_cachep, GFP_ATOMIC);
 if (!new)
  return -ENOMEM;

 new->startbit = bit - (bit % EBITMAP_SIZE);
 ebitmap_node_set_bit(new, bit);

 if (!n)

  e->highbit = new->startbit + EBITMAP_SIZE;

 if (prev) {
  new->next = prev->next;
  prev->next = new;
 } else {
  new->next = e->node;
  e->node = new;
 }

 return 0;
}
