
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WARN_ON_ONCE (int) ;
 int rol32 (int,int) ;

__attribute__((used)) static void chacha_permute(u32 *x, int nrounds)
{
 int i;


 WARN_ON_ONCE(nrounds != 20 && nrounds != 12);

 for (i = 0; i < nrounds; i += 2) {
  x[0] += x[4]; x[12] = rol32(x[12] ^ x[0], 16);
  x[1] += x[5]; x[13] = rol32(x[13] ^ x[1], 16);
  x[2] += x[6]; x[14] = rol32(x[14] ^ x[2], 16);
  x[3] += x[7]; x[15] = rol32(x[15] ^ x[3], 16);

  x[8] += x[12]; x[4] = rol32(x[4] ^ x[8], 12);
  x[9] += x[13]; x[5] = rol32(x[5] ^ x[9], 12);
  x[10] += x[14]; x[6] = rol32(x[6] ^ x[10], 12);
  x[11] += x[15]; x[7] = rol32(x[7] ^ x[11], 12);

  x[0] += x[4]; x[12] = rol32(x[12] ^ x[0], 8);
  x[1] += x[5]; x[13] = rol32(x[13] ^ x[1], 8);
  x[2] += x[6]; x[14] = rol32(x[14] ^ x[2], 8);
  x[3] += x[7]; x[15] = rol32(x[15] ^ x[3], 8);

  x[8] += x[12]; x[4] = rol32(x[4] ^ x[8], 7);
  x[9] += x[13]; x[5] = rol32(x[5] ^ x[9], 7);
  x[10] += x[14]; x[6] = rol32(x[6] ^ x[10], 7);
  x[11] += x[15]; x[7] = rol32(x[7] ^ x[11], 7);

  x[0] += x[5]; x[15] = rol32(x[15] ^ x[0], 16);
  x[1] += x[6]; x[12] = rol32(x[12] ^ x[1], 16);
  x[2] += x[7]; x[13] = rol32(x[13] ^ x[2], 16);
  x[3] += x[4]; x[14] = rol32(x[14] ^ x[3], 16);

  x[10] += x[15]; x[5] = rol32(x[5] ^ x[10], 12);
  x[11] += x[12]; x[6] = rol32(x[6] ^ x[11], 12);
  x[8] += x[13]; x[7] = rol32(x[7] ^ x[8], 12);
  x[9] += x[14]; x[4] = rol32(x[4] ^ x[9], 12);

  x[0] += x[5]; x[15] = rol32(x[15] ^ x[0], 8);
  x[1] += x[6]; x[12] = rol32(x[12] ^ x[1], 8);
  x[2] += x[7]; x[13] = rol32(x[13] ^ x[2], 8);
  x[3] += x[4]; x[14] = rol32(x[14] ^ x[3], 8);

  x[10] += x[15]; x[5] = rol32(x[5] ^ x[10], 7);
  x[11] += x[12]; x[6] = rol32(x[6] ^ x[11], 7);
  x[8] += x[13]; x[7] = rol32(x[7] ^ x[8], 7);
  x[9] += x[14]; x[4] = rol32(x[4] ^ x[9], 7);
 }
}
