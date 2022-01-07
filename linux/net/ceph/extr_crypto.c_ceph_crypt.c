
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_crypto_key {int type; } ;




 int ENOTSUPP ;
 int ceph_aes_crypt (struct ceph_crypto_key const*,int,void*,int,int,int*) ;

int ceph_crypt(const struct ceph_crypto_key *key, bool encrypt,
        void *buf, int buf_len, int in_len, int *pout_len)
{
 switch (key->type) {
 case 128:
  *pout_len = in_len;
  return 0;
 case 129:
  return ceph_aes_crypt(key, encrypt, buf, buf_len, in_len,
          pout_len);
 default:
  return -ENOTSUPP;
 }
}
