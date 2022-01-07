
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlist_head {scalar_t__ bytes; TYPE_1__* tail; int head; } ;
struct TYPE_2__ {int next; } ;


 int qlist_empty (struct qlist_head*) ;
 int qlist_init (struct qlist_head*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void qlist_move_all(struct qlist_head *from, struct qlist_head *to)
{
 if (unlikely(qlist_empty(from)))
  return;

 if (qlist_empty(to)) {
  *to = *from;
  qlist_init(from);
  return;
 }

 to->tail->next = from->head;
 to->tail = from->tail;
 to->bytes += from->bytes;

 qlist_init(from);
}
