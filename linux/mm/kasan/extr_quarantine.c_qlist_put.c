
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlist_node {struct qlist_node* next; } ;
struct qlist_head {size_t bytes; struct qlist_node* tail; struct qlist_node* head; } ;


 int qlist_empty (struct qlist_head*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void qlist_put(struct qlist_head *q, struct qlist_node *qlink,
  size_t size)
{
 if (unlikely(qlist_empty(q)))
  q->head = qlink;
 else
  q->tail->next = qlink;
 q->tail = qlink;
 qlink->next = ((void*)0);
 q->bytes += size;
}
