
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ source_type; scalar_t__ target_type; scalar_t__ target_class; int specified; } ;
struct avtab_node {TYPE_1__ key; struct avtab_node* next; } ;
struct avtab_key {int specified; scalar_t__ source_type; scalar_t__ target_type; scalar_t__ target_class; } ;
struct avtab {struct avtab_node** htable; int mask; } ;


 int AVTAB_ENABLED ;
 int AVTAB_ENABLED_OLD ;
 int avtab_hash (struct avtab_key*,int ) ;

struct avtab_node*
avtab_search_node(struct avtab *h, struct avtab_key *key)
{
 int hvalue;
 struct avtab_node *cur;
 u16 specified = key->specified & ~(AVTAB_ENABLED|AVTAB_ENABLED_OLD);

 if (!h)
  return ((void*)0);

 hvalue = avtab_hash(key, h->mask);
 for (cur = h->htable[hvalue]; cur;
      cur = cur->next) {
  if (key->source_type == cur->key.source_type &&
      key->target_type == cur->key.target_type &&
      key->target_class == cur->key.target_class &&
      (specified & cur->key.specified))
   return cur;

  if (key->source_type < cur->key.source_type)
   break;
  if (key->source_type == cur->key.source_type &&
      key->target_type < cur->key.target_type)
   break;
  if (key->source_type == cur->key.source_type &&
      key->target_type == cur->key.target_type &&
      key->target_class < cur->key.target_class)
   break;
 }
 return ((void*)0);
}
