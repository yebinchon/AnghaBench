
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reserve_info {struct reserve_info* next; } ;


 int assert (int ) ;

struct reserve_info *chain_reserve_entry(struct reserve_info *first,
     struct reserve_info *list)
{
 assert(first->next == ((void*)0));

 first->next = list;
 return first;
}
