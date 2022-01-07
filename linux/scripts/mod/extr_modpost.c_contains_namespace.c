
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespace_list {int namespace; struct namespace_list* next; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool contains_namespace(struct namespace_list *list,
          const char *namespace)
{
 struct namespace_list *ns_entry;

 for (ns_entry = list; ns_entry != ((void*)0); ns_entry = ns_entry->next)
  if (strcmp(ns_entry->namespace, namespace) == 0)
   return 1;

 return 0;
}
