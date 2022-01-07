
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlist_head {int head; } ;



__attribute__((used)) static bool qlist_empty(struct qlist_head *q)
{
 return !q->head;
}
