
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct table_instance {int n_buckets; int keep_flows; int hash_seed; scalar_t__ node_ver; int * buckets; } ;
struct hlist_head {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int get_random_bytes (int *,int) ;
 int kfree (struct table_instance*) ;
 struct table_instance* kmalloc (int,int ) ;
 int * kvmalloc_array (int,int,int ) ;

__attribute__((used)) static struct table_instance *table_instance_alloc(int new_size)
{
 struct table_instance *ti = kmalloc(sizeof(*ti), GFP_KERNEL);
 int i;

 if (!ti)
  return ((void*)0);

 ti->buckets = kvmalloc_array(new_size, sizeof(struct hlist_head),
         GFP_KERNEL);
 if (!ti->buckets) {
  kfree(ti);
  return ((void*)0);
 }

 for (i = 0; i < new_size; i++)
  INIT_HLIST_HEAD(&ti->buckets[i]);

 ti->n_buckets = new_size;
 ti->node_ver = 0;
 ti->keep_flows = 0;
 get_random_bytes(&ti->hash_seed, sizeof(u32));

 return ti;
}
