
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct token {int dummy; } ;
struct element {struct element* list_next; } ;


 struct element* calloc (int,int) ;
 struct element* element_list ;
 int exit (int) ;
 int perror (int *) ;

__attribute__((used)) static struct element *alloc_elem(struct token *type)
{
 struct element *e = calloc(1, sizeof(*e));
 if (!e) {
  perror(((void*)0));
  exit(1);
 }
 e->list_next = element_list;
 element_list = e;
 return e;
}
