
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hlist_bl_lock (int *) ;
 int * qd_hash_table ;

__attribute__((used)) static inline void spin_lock_bucket(unsigned int hash)
{
        hlist_bl_lock(&qd_hash_table[hash]);
}
