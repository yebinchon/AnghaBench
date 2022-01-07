
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 cfg80211_get_start_freq(u32 center_freq,
       u32 bandwidth)
{
 u32 start_freq;

 if (bandwidth <= 20)
  start_freq = center_freq;
 else
  start_freq = center_freq - bandwidth/2 + 10;

 return start_freq;
}
