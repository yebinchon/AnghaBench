
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlist_node {struct qlist_node* next; } ;
struct qlist_head {struct qlist_node* head; } ;
struct kmem_cache {int size; } ;


 struct kmem_cache* qlink_to_cache (struct qlist_node*) ;
 int qlist_empty (struct qlist_head*) ;
 int qlist_init (struct qlist_head*) ;
 int qlist_put (struct qlist_head*,struct qlist_node*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void qlist_move_cache(struct qlist_head *from,
       struct qlist_head *to,
       struct kmem_cache *cache)
{
 struct qlist_node *curr;

 if (unlikely(qlist_empty(from)))
  return;

 curr = from->head;
 qlist_init(from);
 while (curr) {
  struct qlist_node *next = curr->next;
  struct kmem_cache *obj_cache = qlink_to_cache(curr);

  if (obj_cache == cache)
   qlist_put(to, curr, obj_cache->size);
  else
   qlist_put(from, curr, obj_cache->size);

  curr = next;
 }
}
