
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct dentry {int dummy; } ;


 unsigned long L1_CACHE_BYTES ;
 struct hlist_head* mountpoint_hashtable ;
 unsigned long mp_hash_mask ;
 unsigned long mp_hash_shift ;

__attribute__((used)) static inline struct hlist_head *mp_hash(struct dentry *dentry)
{
 unsigned long tmp = ((unsigned long)dentry / L1_CACHE_BYTES);
 tmp = tmp + (tmp >> mp_hash_shift);
 return &mountpoint_hashtable[tmp & mp_hash_mask];
}
