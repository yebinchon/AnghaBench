
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlist_head {scalar_t__ bytes; int * tail; int head; } ;



__attribute__((used)) static void qlist_init(struct qlist_head *q)
{
 q->head = q->tail = ((void*)0);
 q->bytes = 0;
}
