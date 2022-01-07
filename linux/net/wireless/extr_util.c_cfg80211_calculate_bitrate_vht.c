
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rate_info {int mcs; int bw; int nss; int flags; } ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 int WARN_ONCE (int,char*,int,size_t,int) ;

__attribute__((used)) static u32 cfg80211_calculate_bitrate_vht(struct rate_info *rate)
{
 static const u32 base[4][10] = {
  { 6500000,
     13000000,
     19500000,
     26000000,
     39000000,
     52000000,
     58500000,
     65000000,
     78000000,

     86500000,
  },
  { 13500000,
     27000000,
     40500000,
     54000000,
     81000000,
    108000000,
    121500000,
    135000000,
    162000000,
    180000000,
  },
  { 29300000,
     58500000,
     87800000,
    117000000,
    175500000,
    234000000,
    263300000,
    292500000,
    351000000,
    390000000,
  },
  { 58500000,
    117000000,
    175500000,
    234000000,
    351000000,
    468000000,
    526500000,
    585000000,
    702000000,
    780000000,
  },
 };
 u32 bitrate;
 int idx;

 if (rate->mcs > 9)
  goto warn;

 switch (rate->bw) {
 case 132:
  idx = 3;
  break;
 case 128:
  idx = 2;
  break;
 case 130:
  idx = 1;
  break;
 case 129:
 case 133:
 default:
  goto warn;
 case 131:
  idx = 0;
 }

 bitrate = base[idx][rate->mcs];
 bitrate *= rate->nss;

 if (rate->flags & RATE_INFO_FLAGS_SHORT_GI)
  bitrate = (bitrate / 9) * 10;


 return (bitrate + 50000) / 100000;
 warn:
 WARN_ONCE(1, "invalid rate bw=%d, mcs=%d, nss=%d\n",
    rate->bw, rate->mcs, rate->nss);
 return 0;
}
