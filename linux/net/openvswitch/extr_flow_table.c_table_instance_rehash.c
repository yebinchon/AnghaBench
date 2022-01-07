
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_instance {int dummy; } ;


 int flow_table_copy_flows (struct table_instance*,struct table_instance*,int) ;
 struct table_instance* table_instance_alloc (int) ;

__attribute__((used)) static struct table_instance *table_instance_rehash(struct table_instance *ti,
          int n_buckets, bool ufid)
{
 struct table_instance *new_ti;

 new_ti = table_instance_alloc(n_buckets);
 if (!new_ti)
  return ((void*)0);

 flow_table_copy_flows(ti, new_ti, ufid);

 return new_ti;
}
