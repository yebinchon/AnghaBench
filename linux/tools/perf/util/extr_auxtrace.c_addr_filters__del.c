
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_filters {int cnt; } ;
struct addr_filter {int list; } ;


 int list_del_init (int *) ;

__attribute__((used)) static void addr_filters__del(struct addr_filters *filts,
         struct addr_filter *filt)
{
 list_del_init(&filt->list);
 filts->cnt -= 1;
}
