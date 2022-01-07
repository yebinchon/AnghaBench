
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct aa_ns {int dummy; } ;


 struct aa_ns* __aa_findn_ns (struct list_head*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline struct aa_ns *__aa_find_ns(struct list_head *head,
      const char *name)
{
 return __aa_findn_ns(head, name, strlen(name));
}
