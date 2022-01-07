
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_filters {int cnt; int head; } ;
struct addr_filter {int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void addr_filters__add(struct addr_filters *filts,
         struct addr_filter *filt)
{
 list_add_tail(&filt->list, &filts->head);
 filts->cnt += 1;
}
