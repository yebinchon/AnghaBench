
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int ARRAY_SIZE (scalar_t__*) ;
 int chacha_permute (scalar_t__*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int put_unaligned_le32 (scalar_t__,int *) ;

void chacha_block(u32 *state, u8 *stream, int nrounds)
{
 u32 x[16];
 int i;

 memcpy(x, state, 64);

 chacha_permute(x, nrounds);

 for (i = 0; i < ARRAY_SIZE(x); i++)
  put_unaligned_le32(x[i] + state[i], &stream[i * sizeof(u32)]);

 state[12]++;
}
