
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parman_prio {int item_list; } ;


 int list_empty (int *) ;

__attribute__((used)) static bool parman_prio_used(struct parman_prio *prio)

{
 return !list_empty(&prio->item_list);
}
