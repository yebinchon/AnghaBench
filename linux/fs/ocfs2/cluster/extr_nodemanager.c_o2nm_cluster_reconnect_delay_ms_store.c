
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int cl_reconnect_delay_ms; } ;


 int o2nm_cluster_attr_write (char const*,size_t,int *) ;
 TYPE_1__* to_o2nm_cluster (struct config_item*) ;

__attribute__((used)) static ssize_t o2nm_cluster_reconnect_delay_ms_store(
 struct config_item *item, const char *page, size_t count)
{
 return o2nm_cluster_attr_write(page, count,
                               &to_o2nm_cluster(item)->cl_reconnect_delay_ms);
}
