
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct hlist_head {int dummy; } ;


 int KEYHASH_BITS ;
 unsigned long hash_long (uintptr_t,int ) ;
 struct hlist_head* lock_keys_hash ;

__attribute__((used)) static inline struct hlist_head *keyhashentry(const struct lock_class_key *key)
{
 unsigned long hash = hash_long((uintptr_t)key, KEYHASH_BITS);

 return lock_keys_hash + hash;
}
