
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_comp_compress (int ,void const*,unsigned int,void*,unsigned int*) ;
 int pr_err (char*,int) ;
 int tfm ;

__attribute__((used)) static int pstore_compress(const void *in, void *out,
      unsigned int inlen, unsigned int outlen)
{
 int ret;

 ret = crypto_comp_compress(tfm, in, inlen, out, &outlen);
 if (ret) {
  pr_err("crypto_comp_compress failed, ret = %d!\n", ret);
  return ret;
 }

 return outlen;
}
