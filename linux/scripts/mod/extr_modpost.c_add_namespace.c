
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespace_list {struct namespace_list* next; int namespace; } ;


 struct namespace_list* NOFAIL (int ) ;
 int contains_namespace (struct namespace_list*,char const*) ;
 int malloc (scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void add_namespace(struct namespace_list **list, const char *namespace)
{
 struct namespace_list *ns_entry;

 if (!contains_namespace(*list, namespace)) {
  ns_entry = NOFAIL(malloc(sizeof(struct namespace_list) +
      strlen(namespace) + 1));
  strcpy(ns_entry->namespace, namespace);
  ns_entry->next = *list;
  *list = ns_entry;
 }
}
