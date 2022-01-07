
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shash_desc {int tfm; } ;
struct ext4_sb_info {int s_chksum_driver; } ;


 int BUG_ON (int) ;
 int crypto_shash_descsize (int ) ;
 int crypto_shash_update (struct shash_desc*,void const*,unsigned int) ;

__attribute__((used)) static inline u32 ext4_chksum(struct ext4_sb_info *sbi, u32 crc,
         const void *address, unsigned int length)
{
 struct {
  struct shash_desc shash;
  char ctx[4];
 } desc;

 BUG_ON(crypto_shash_descsize(sbi->s_chksum_driver)!=sizeof(desc.ctx));

 desc.shash.tfm = sbi->s_chksum_driver;
 *(u32 *)desc.ctx = crc;

 BUG_ON(crypto_shash_update(&desc.shash, address, length));

 return *(u32 *)desc.ctx;
}
