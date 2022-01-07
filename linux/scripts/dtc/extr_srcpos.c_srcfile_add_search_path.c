
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_path {struct search_path* next; int dirname; } ;


 struct search_path* search_path_head ;
 struct search_path** search_path_tail ;
 struct search_path* xmalloc (int) ;
 int xstrdup (char const*) ;

void srcfile_add_search_path(const char *dirname)
{
 struct search_path *node;


 node = xmalloc(sizeof(*node));
 node->next = ((void*)0);
 node->dirname = xstrdup(dirname);


 if (search_path_tail)
  *search_path_tail = node;
 else
  search_path_head = node;
 search_path_tail = &node->next;
}
