
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int * next; int tag; int string; } ;


 int SYM_NORMAL ;
 struct string_list* xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct string_list *mk_node(const char *string)
{
 struct string_list *newnode;

 newnode = xmalloc(sizeof(*newnode));
 newnode->string = xstrdup(string);
 newnode->tag = SYM_NORMAL;
 newnode->next = ((void*)0);

 return newnode;
}
