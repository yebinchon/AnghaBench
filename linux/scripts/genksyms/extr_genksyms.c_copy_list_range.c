
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {struct string_list* next; } ;


 void* copy_node (struct string_list*) ;

struct string_list *copy_list_range(struct string_list *start,
        struct string_list *end)
{
 struct string_list *res, *n;

 if (start == end)
  return ((void*)0);
 n = res = copy_node(start);
 for (start = start->next; start != end; start = start->next) {
  n->next = copy_node(start);
  n = n->next;
 }
 n->next = ((void*)0);
 return res;
}
