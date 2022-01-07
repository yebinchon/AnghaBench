
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ieee80211_frequency_to_channel(int freq)
{

 if (freq == 2484)
  return 14;
 else if (freq < 2484)
  return (freq - 2407) / 5;
 else if (freq >= 4910 && freq <= 4980)
  return (freq - 4000) / 5;
 else if (freq < 5945)
  return (freq - 5000) / 5;
 else if (freq <= 45000)

  return (freq - 5940) / 5;
 else if (freq >= 58320 && freq <= 70200)
  return (freq - 56160) / 2160;
 else
  return 0;
}
