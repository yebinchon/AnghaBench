
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IMA_HASH_BITS ;
 unsigned long hash_long (int ,int ) ;

__attribute__((used)) static inline unsigned long ima_hash_key(u8 *digest)
{
 return hash_long(*digest, IMA_HASH_BITS);
}
