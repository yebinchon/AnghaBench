
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addr_filters {scalar_t__ cnt; int head; } ;


 int INIT_LIST_HEAD (int *) ;

void addr_filters__init(struct addr_filters *filts)
{
 INIT_LIST_HEAD(&filts->head);
 filts->cnt = 0;
}
