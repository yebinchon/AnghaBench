
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
typedef int __u16 ;


 int BUG_ON (int) ;
 int crc_t10dif_generic (int ,unsigned char const*,size_t) ;
 int crct10dif_fallback ;
 int crct10dif_tfm ;
 int crypto_shash_update (struct shash_desc*,unsigned char const*,size_t) ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ static_key_false (int *) ;

__u16 crc_t10dif_update(__u16 crc, const unsigned char *buffer, size_t len)
{
 struct {
  struct shash_desc shash;
  char ctx[2];
 } desc;
 int err;

 if (static_key_false(&crct10dif_fallback))
  return crc_t10dif_generic(crc, buffer, len);

 rcu_read_lock();
 desc.shash.tfm = rcu_dereference(crct10dif_tfm);
 *(__u16 *)desc.ctx = crc;

 err = crypto_shash_update(&desc.shash, buffer, len);
 rcu_read_unlock();

 BUG_ON(err);

 return *(__u16 *)desc.ctx;
}
