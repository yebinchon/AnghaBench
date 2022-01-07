
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_crypto_key {int dummy; } ;


 int EINVAL ;
 int __ceph_x_decrypt (struct ceph_crypto_key*,void*,int) ;
 int ceph_decode_32_safe (void**,void*,int,int ) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int e_inval ;

__attribute__((used)) static int ceph_x_decrypt(struct ceph_crypto_key *secret, void **p, void *end)
{
 int ciphertext_len;
 int ret;

 ceph_decode_32_safe(p, end, ciphertext_len, e_inval);
 ceph_decode_need(p, end, ciphertext_len, e_inval);

 ret = __ceph_x_decrypt(secret, *p, ciphertext_len);
 if (ret < 0)
  return ret;

 *p += ciphertext_len;
 return ret;

e_inval:
 return -EINVAL;
}
