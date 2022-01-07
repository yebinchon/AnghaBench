
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {struct string_list* next; } ;


 int free_node (struct string_list*) ;

void free_list(struct string_list *s, struct string_list *e)
{
 while (s != e) {
  struct string_list *next = s->next;
  free_node(s);
  s = next;
 }
}
