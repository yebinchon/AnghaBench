
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int mdb_hash_tbl; } ;


 int rhashtable_destroy (int *) ;

void br_mdb_hash_fini(struct net_bridge *br)
{
 rhashtable_destroy(&br->mdb_hash_tbl);
}
