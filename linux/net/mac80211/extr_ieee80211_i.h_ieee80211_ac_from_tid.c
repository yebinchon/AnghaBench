
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ieee802_1d_to_ac ;

__attribute__((used)) static inline int ieee80211_ac_from_tid(int tid)
{
 return ieee802_1d_to_ac[tid & 7];
}
