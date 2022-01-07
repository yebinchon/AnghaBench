
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct aa_ns {int dummy; } ;


 scalar_t__ __policy_strn_find (struct list_head*,char const*,size_t) ;

__attribute__((used)) static inline struct aa_ns *__aa_findn_ns(struct list_head *head,
       const char *name, size_t n)
{
 return (struct aa_ns *)__policy_strn_find(head, name, n);
}
