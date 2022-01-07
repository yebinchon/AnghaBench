
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_instance {int n_buckets; } ;


 struct table_instance* table_instance_rehash (struct table_instance*,int,int) ;

__attribute__((used)) static struct table_instance *table_instance_expand(struct table_instance *ti,
          bool ufid)
{
 return table_instance_rehash(ti, ti->n_buckets * 2, ufid);
}
