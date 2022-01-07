
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct aa_profile {int dummy; } ;


 struct aa_profile* __strn_find_child (struct list_head*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static struct aa_profile *__find_child(struct list_head *head, const char *name)
{
 return __strn_find_child(head, name, strlen(name));
}
