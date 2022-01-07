
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aarp_entry {struct aarp_entry* next; } ;


 int __aarp_expire (struct aarp_entry*) ;

__attribute__((used)) static void __aarp_expire_all(struct aarp_entry **n)
{
 struct aarp_entry *t;

 while (*n) {
  t = *n;
  *n = (*n)->next;
  __aarp_expire(t);
 }
}
