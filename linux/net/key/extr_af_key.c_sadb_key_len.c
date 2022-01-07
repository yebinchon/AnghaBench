
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sadb_key {int sadb_key_bits; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static inline int sadb_key_len(const struct sadb_key *key)
{
 int key_bytes = DIV_ROUND_UP(key->sadb_key_bits, 8);

 return DIV_ROUND_UP(sizeof(struct sadb_key) + key_bytes,
       sizeof(uint64_t));
}
