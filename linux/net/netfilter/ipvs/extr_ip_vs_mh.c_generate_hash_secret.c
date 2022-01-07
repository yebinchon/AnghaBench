
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long* key; } ;
typedef TYPE_1__ hsiphash_key_t ;



__attribute__((used)) static inline void generate_hash_secret(hsiphash_key_t *hash1,
     hsiphash_key_t *hash2)
{
 hash1->key[0] = 2654435761UL;
 hash1->key[1] = 2654435761UL;

 hash2->key[0] = 2654446892UL;
 hash2->key[1] = 2654446892UL;
}
