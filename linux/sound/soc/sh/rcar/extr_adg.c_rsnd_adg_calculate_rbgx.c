
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 rsnd_adg_calculate_rbgx(unsigned long div)
{
 int i, ratio;

 if (!div)
  return 0;

 for (i = 3; i >= 0; i--) {
  ratio = 2 << (i * 2);
  if (0 == (div % ratio))
   return (u32)((i << 8) | ((div / ratio) - 1));
 }

 return ~0;
}
