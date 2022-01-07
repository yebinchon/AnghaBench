
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {int* u32; } ;
typedef int uint32_t ;
struct ubifs_info {int (* key_hash ) (int ,int ) ;} ;
struct fscrypt_name {int dummy; } ;
typedef int ino_t ;


 int UBIFS_S_KEY_HASH_BITS ;
 int UBIFS_S_KEY_HASH_MASK ;
 int UBIFS_XENT_KEY ;
 int fname_len (struct fscrypt_name const*) ;
 int fname_name (struct fscrypt_name const*) ;
 int stub1 (int ,int ) ;
 int ubifs_assert (struct ubifs_info const*,int) ;

__attribute__((used)) static inline void xent_key_init(const struct ubifs_info *c,
     union ubifs_key *key, ino_t inum,
     const struct fscrypt_name *nm)
{
 uint32_t hash = c->key_hash(fname_name(nm), fname_len(nm));

 ubifs_assert(c, !(hash & ~UBIFS_S_KEY_HASH_MASK));
 key->u32[0] = inum;
 key->u32[1] = hash | (UBIFS_XENT_KEY << UBIFS_S_KEY_HASH_BITS);
}
