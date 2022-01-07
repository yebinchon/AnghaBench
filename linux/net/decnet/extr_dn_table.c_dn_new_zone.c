
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_zone {int dz_divisor; int dz_hashmask; int dz_order; struct dn_zone* dz_next; int dz_mask; int dz_hash; } ;
struct dn_hash {struct dn_zone** dh_zones; struct dn_zone* dh_zone_list; } ;
struct dn_fib_node {int dummy; } ;


 int GFP_KERNEL ;
 int dn_fib_tables_lock ;
 int dnet_make_mask (int) ;
 int kcalloc (int,int,int ) ;
 int kfree (struct dn_zone*) ;
 struct dn_zone* kzalloc (int,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static struct dn_zone *dn_new_zone(struct dn_hash *table, int z)
{
 int i;
 struct dn_zone *dz = kzalloc(sizeof(struct dn_zone), GFP_KERNEL);
 if (!dz)
  return ((void*)0);

 if (z) {
  dz->dz_divisor = 16;
  dz->dz_hashmask = 0x0F;
 } else {
  dz->dz_divisor = 1;
  dz->dz_hashmask = 0;
 }

 dz->dz_hash = kcalloc(dz->dz_divisor, sizeof(struct dn_fib_node *), GFP_KERNEL);
 if (!dz->dz_hash) {
  kfree(dz);
  return ((void*)0);
 }

 dz->dz_order = z;
 dz->dz_mask = dnet_make_mask(z);

 for(i = z + 1; i <= 16; i++)
  if (table->dh_zones[i])
   break;

 write_lock_bh(&dn_fib_tables_lock);
 if (i>16) {
  dz->dz_next = table->dh_zone_list;
  table->dh_zone_list = dz;
 } else {
  dz->dz_next = table->dh_zones[i]->dz_next;
  table->dh_zones[i]->dz_next = dz;
 }
 table->dh_zones[z] = dz;
 write_unlock_bh(&dn_fib_tables_lock);
 return dz;
}
