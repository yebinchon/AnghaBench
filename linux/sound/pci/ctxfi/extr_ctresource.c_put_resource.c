
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;



__attribute__((used)) static int put_resource(u8 *rscs, unsigned int multi, unsigned int idx)
{
 unsigned int i, j, k, n;


 for (n = multi, i = idx; n > 0; n--) {
  j = i / 8;
  k = i % 8;
  rscs[j] &= ~((u8)1 << k);
  i++;
 }

 return 0;
}
