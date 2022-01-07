
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_instance {int buckets; } ;


 int kfree (struct table_instance*) ;
 int kvfree (int ) ;

__attribute__((used)) static void __table_instance_destroy(struct table_instance *ti)
{
 kvfree(ti->buckets);
 kfree(ti);
}
