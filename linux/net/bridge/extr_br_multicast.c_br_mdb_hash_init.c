
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int mdb_hash_tbl; } ;


 int br_mdb_rht_params ;
 int rhashtable_init (int *,int *) ;

int br_mdb_hash_init(struct net_bridge *br)
{
 return rhashtable_init(&br->mdb_hash_tbl, &br_mdb_rht_params);
}
