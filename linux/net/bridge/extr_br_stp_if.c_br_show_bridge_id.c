
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_id {int* prio; int* addr; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int,int,int,int,int,int,int) ;

ssize_t br_show_bridge_id(char *buf, const struct bridge_id *id)
{
 return sprintf(buf, "%.2x%.2x.%.2x%.2x%.2x%.2x%.2x%.2x\n",
        id->prio[0], id->prio[1],
        id->addr[0], id->addr[1], id->addr[2],
        id->addr[3], id->addr[4], id->addr[5]);
}
