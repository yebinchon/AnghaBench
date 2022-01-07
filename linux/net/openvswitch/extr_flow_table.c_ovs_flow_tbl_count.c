
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_table {int count; } ;



int ovs_flow_tbl_count(const struct flow_table *table)
{
 return table->count;
}
