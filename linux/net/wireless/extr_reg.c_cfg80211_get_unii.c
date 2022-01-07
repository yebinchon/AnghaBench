
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

int cfg80211_get_unii(int freq)
{

 if (freq >= 5150 && freq <= 5250)
  return 0;


 if (freq > 5250 && freq <= 5350)
  return 1;


 if (freq > 5350 && freq <= 5470)
  return 2;


 if (freq > 5470 && freq <= 5725)
  return 3;


 if (freq > 5725 && freq <= 5825)
  return 4;


 if (freq > 5925 && freq <= 6425)
  return 5;


 if (freq > 6425 && freq <= 6525)
  return 6;


 if (freq > 6525 && freq <= 6875)
  return 7;


 if (freq > 6875 && freq <= 7125)
  return 8;

 return -EINVAL;
}
