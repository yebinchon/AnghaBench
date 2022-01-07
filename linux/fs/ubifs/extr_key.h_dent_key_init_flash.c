
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ubifs_key {void** j32; } ;
typedef int uint32_t ;
struct ubifs_info {int (* key_hash ) (int ,int ) ;} ;
struct fscrypt_name {int dummy; } ;
typedef int ino_t ;


 int UBIFS_DENT_KEY ;
 scalar_t__ UBIFS_MAX_KEY_LEN ;
 int UBIFS_S_KEY_HASH_BITS ;
 int UBIFS_S_KEY_HASH_MASK ;
 void* cpu_to_le32 (int) ;
 int fname_len (struct fscrypt_name const*) ;
 int fname_name (struct fscrypt_name const*) ;
 int memset (void*,int ,scalar_t__) ;
 int stub1 (int ,int ) ;
 int ubifs_assert (struct ubifs_info const*,int) ;

__attribute__((used)) static inline void dent_key_init_flash(const struct ubifs_info *c, void *k,
           ino_t inum,
           const struct fscrypt_name *nm)
{
 union ubifs_key *key = k;
 uint32_t hash = c->key_hash(fname_name(nm), fname_len(nm));

 ubifs_assert(c, !(hash & ~UBIFS_S_KEY_HASH_MASK));
 key->j32[0] = cpu_to_le32(inum);
 key->j32[1] = cpu_to_le32(hash |
      (UBIFS_DENT_KEY << UBIFS_S_KEY_HASH_BITS));
 memset(k + 8, 0, UBIFS_MAX_KEY_LEN - 8);
}
