
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct list_head {struct list_head* next; } ;


 int list_add (struct list_head*,struct list_head*) ;
 int list_del (struct list_head*) ;

__attribute__((used)) static void rotate_list(struct list_head *head, uint32_t count)
{
 struct list_head *n = head->next;

 list_del(head);
 while(count--) {
  n = n->next;
 }
 list_add(head, n);
}
