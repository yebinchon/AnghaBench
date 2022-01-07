
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_cpu_dm_data {int drop_queue; } ;


 int WARN_ON (int) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static void __net_dm_cpu_data_fini(struct per_cpu_dm_data *data)
{
 WARN_ON(!skb_queue_empty(&data->drop_queue));
}
