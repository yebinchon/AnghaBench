
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;


 int chacha_permute (int const*,int) ;
 int memcpy (int const*,int const*,int) ;

void hchacha_block(const u32 *in, u32 *out, int nrounds)
{
 u32 x[16];

 memcpy(x, in, 64);

 chacha_permute(x, nrounds);

 memcpy(&out[0], &x[0], 16);
 memcpy(&out[4], &x[12], 16);
}
