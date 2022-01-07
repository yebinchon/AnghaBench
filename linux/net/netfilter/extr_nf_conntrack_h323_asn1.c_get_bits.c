
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstr {int* cur; int bit; } ;



__attribute__((used)) static unsigned int get_bits(struct bitstr *bs, unsigned int b)
{
 unsigned int v, l;

 v = (*bs->cur) & (0xffU >> bs->bit);
 l = b + bs->bit;

 if (l < 8) {
  v >>= 8 - l;
  bs->bit = l;
 } else if (l == 8) {
  bs->cur++;
  bs->bit = 0;
 } else {

  v <<= 8;
  v += *(++bs->cur);
  v >>= 16 - l;
  bs->bit = l - 8;
 }

 return v;
}
