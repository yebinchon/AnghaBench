
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static int subpattern(u8 *pattern, int i, int j, int g)
{
 int x = i+g-1, y = j+g-1, ret = 0;

 while(pattern[x--] == pattern[y--]) {
  if (y < 0) {
   ret = 1;
   break;
  }
  if (--g == 0) {
   ret = pattern[i-1] != pattern[j-1];
   break;
  }
 }

 return ret;
}
