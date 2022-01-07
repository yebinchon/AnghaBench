
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bind_hash_table ;
 int ht_parms ;
 int rhashtable_init (int *,int *) ;

int rds_bind_lock_init(void)
{
 return rhashtable_init(&bind_hash_table, &ht_parms);
}
