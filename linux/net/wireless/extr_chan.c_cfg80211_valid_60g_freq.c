
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool cfg80211_valid_60g_freq(u32 freq)
{
 return freq >= 58320 && freq <= 70200;
}
