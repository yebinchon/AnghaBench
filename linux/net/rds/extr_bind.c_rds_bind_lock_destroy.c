
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bind_hash_table ;
 int rhashtable_destroy (int *) ;

void rds_bind_lock_destroy(void)
{
 rhashtable_destroy(&bind_hash_table);
}
