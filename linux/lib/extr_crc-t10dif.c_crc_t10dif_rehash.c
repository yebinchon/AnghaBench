
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct crypto_shash {int dummy; } ;
struct crypto_alg {int cra_name; } ;


 int CRC_T10DIF_STRING ;
 unsigned long CRYPTO_MSG_ALG_LOADED ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int crc_t10dif_mutex ;
 int crct10dif_fallback ;
 int crct10dif_tfm ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct crypto_shash*) ;
 struct crypto_shash* rcu_dereference_protected (int ,int ) ;
 scalar_t__ static_key_false (int *) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;
 int synchronize_rcu () ;

__attribute__((used)) static int crc_t10dif_rehash(struct notifier_block *self, unsigned long val, void *data)
{
 struct crypto_alg *alg = data;
 struct crypto_shash *new, *old;

 if (val != CRYPTO_MSG_ALG_LOADED ||
     static_key_false(&crct10dif_fallback) ||
     strncmp(alg->cra_name, CRC_T10DIF_STRING, strlen(CRC_T10DIF_STRING)))
  return 0;

 mutex_lock(&crc_t10dif_mutex);
 old = rcu_dereference_protected(crct10dif_tfm,
     lockdep_is_held(&crc_t10dif_mutex));
 if (!old) {
  mutex_unlock(&crc_t10dif_mutex);
  return 0;
 }
 new = crypto_alloc_shash("crct10dif", 0, 0);
 if (IS_ERR(new)) {
  mutex_unlock(&crc_t10dif_mutex);
  return 0;
 }
 rcu_assign_pointer(crct10dif_tfm, new);
 mutex_unlock(&crc_t10dif_mutex);

 synchronize_rcu();
 crypto_free_shash(old);
 return 0;
}
