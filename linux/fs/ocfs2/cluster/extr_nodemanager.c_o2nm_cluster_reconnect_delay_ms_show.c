
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int cl_reconnect_delay_ms; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_o2nm_cluster (struct config_item*) ;

__attribute__((used)) static ssize_t o2nm_cluster_reconnect_delay_ms_show(
 struct config_item *item, char *page)
{
 return sprintf(page, "%u\n",
   to_o2nm_cluster(item)->cl_reconnect_delay_ms);
}
