
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {struct string_list* next; } ;
typedef int FILE ;


 struct string_list** alloca (int) ;
 int fputs (char*,int *) ;
 int print_node (int *,int ) ;
 int putc (char,int *) ;

__attribute__((used)) static void print_list(FILE * f, struct string_list *list)
{
 struct string_list **e, **b;
 struct string_list *tmp, **tmp2;
 int elem = 1;

 if (list == ((void*)0)) {
  fputs("(nil)", f);
  return;
 }

 tmp = list;
 while ((tmp = tmp->next) != ((void*)0))
  elem++;

 b = alloca(elem * sizeof(*e));
 e = b + elem;
 tmp2 = e - 1;

 (*tmp2--) = list;
 while ((list = list->next) != ((void*)0))
  *(tmp2--) = list;

 while (b != e) {
  print_node(f, *b++);
  putc(' ', f);
 }
}
