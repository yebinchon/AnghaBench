
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 cfg80211_get_end_freq(u32 center_freq,
     u32 bandwidth)
{
 u32 end_freq;

 if (bandwidth <= 20)
  end_freq = center_freq;
 else
  end_freq = center_freq + bandwidth/2 - 10;

 return end_freq;
}
