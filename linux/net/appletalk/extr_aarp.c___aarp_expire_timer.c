
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aarp_entry {struct aarp_entry* next; int expires_at; } ;


 int __aarp_expire (struct aarp_entry*) ;
 int jiffies ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static void __aarp_expire_timer(struct aarp_entry **n)
{
 struct aarp_entry *t;

 while (*n)

  if (time_after(jiffies, (*n)->expires_at)) {
   t = *n;
   *n = (*n)->next;
   __aarp_expire(t);
  } else
   n = &((*n)->next);
}
