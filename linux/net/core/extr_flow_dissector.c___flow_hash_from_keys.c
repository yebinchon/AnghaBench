
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct flow_keys {int dummy; } ;
typedef int siphash_key_t ;


 int __flow_hash_consistentify (struct flow_keys*) ;
 int flow_keys_hash_length (struct flow_keys*) ;
 int flow_keys_hash_start (struct flow_keys*) ;
 int siphash (int ,int ,int const*) ;

__attribute__((used)) static inline u32 __flow_hash_from_keys(struct flow_keys *keys,
     const siphash_key_t *keyval)
{
 u32 hash;

 __flow_hash_consistentify(keys);

 hash = siphash(flow_keys_hash_start(keys),
         flow_keys_hash_length(keys), keyval);
 if (!hash)
  hash = 1;

 return hash;
}
