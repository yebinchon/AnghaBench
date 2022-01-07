
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlist_node {struct qlist_node* next; } ;
struct qlist_head {struct qlist_node* head; } ;
struct kmem_cache {int dummy; } ;


 int qlink_free (struct qlist_node*,struct kmem_cache*) ;
 struct kmem_cache* qlink_to_cache (struct qlist_node*) ;
 int qlist_empty (struct qlist_head*) ;
 int qlist_init (struct qlist_head*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void qlist_free_all(struct qlist_head *q, struct kmem_cache *cache)
{
 struct qlist_node *qlink;

 if (unlikely(qlist_empty(q)))
  return;

 qlink = q->head;
 while (qlink) {
  struct kmem_cache *obj_cache =
   cache ? cache : qlink_to_cache(qlink);
  struct qlist_node *next = qlink->next;

  qlink_free(qlink, obj_cache);
  qlink = next;
 }
 qlist_init(q);
}
