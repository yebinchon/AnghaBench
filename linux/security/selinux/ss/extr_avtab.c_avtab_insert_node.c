
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; struct avtab_extended_perms* xperms; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
struct avtab_key {int specified; } ;
struct avtab_node {struct avtab_node* next; TYPE_2__ datum; struct avtab_key key; } ;
struct avtab_extended_perms {int dummy; } ;
struct TYPE_6__ {int data; struct avtab_extended_perms* xperms; } ;
struct avtab_datum {TYPE_3__ u; } ;
struct avtab {int nel; struct avtab_node** htable; } ;


 int AVTAB_XPERMS ;
 int GFP_KERNEL ;
 int avtab_node_cachep ;
 int avtab_xperms_cachep ;
 int kmem_cache_free (int ,struct avtab_node*) ;
 void* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static struct avtab_node*
avtab_insert_node(struct avtab *h, int hvalue,
    struct avtab_node *prev, struct avtab_node *cur,
    struct avtab_key *key, struct avtab_datum *datum)
{
 struct avtab_node *newnode;
 struct avtab_extended_perms *xperms;
 newnode = kmem_cache_zalloc(avtab_node_cachep, GFP_KERNEL);
 if (newnode == ((void*)0))
  return ((void*)0);
 newnode->key = *key;

 if (key->specified & AVTAB_XPERMS) {
  xperms = kmem_cache_zalloc(avtab_xperms_cachep, GFP_KERNEL);
  if (xperms == ((void*)0)) {
   kmem_cache_free(avtab_node_cachep, newnode);
   return ((void*)0);
  }
  *xperms = *(datum->u.xperms);
  newnode->datum.u.xperms = xperms;
 } else {
  newnode->datum.u.data = datum->u.data;
 }

 if (prev) {
  newnode->next = prev->next;
  prev->next = newnode;
 } else {
  struct avtab_node **n = &h->htable[hvalue];

  newnode->next = *n;
  *n = newnode;
 }

 h->nel++;
 return newnode;
}
