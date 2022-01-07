
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *pkcs_1_v1_5_decode_emsa(const unsigned char *msg,
      unsigned long msglen,
      unsigned long modulus_bitlen,
      unsigned long *outlen)
{
 unsigned long modulus_len, ps_len, i;

 modulus_len = (modulus_bitlen >> 3) + (modulus_bitlen & 7 ? 1 : 0);


 if ((msglen > modulus_len) || (modulus_len < 11))
  return ((void*)0);


 if (msg[0] != 0x00 || msg[1] != 0x01)
  return ((void*)0);

 for (i = 2; i < modulus_len - 1; i++)
  if (msg[i] != 0xFF)
   break;


 if (msg[i] != 0)


  return ((void*)0);

 ps_len = i - 2;

 *outlen = (msglen - (2 + ps_len + 1));

 return msg + 2 + ps_len + 1;
}
