
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_bl_head {int dummy; } ;


 unsigned int d_hash_shift ;
 struct hlist_bl_head* dentry_hashtable ;

__attribute__((used)) static inline struct hlist_bl_head *d_hash(unsigned int hash)
{
 return dentry_hashtable + (hash >> d_hash_shift);
}
