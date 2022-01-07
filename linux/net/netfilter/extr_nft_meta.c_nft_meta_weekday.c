
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned long tz_minuteswest; } ;


 int NFT_META_DAYS_PER_WEEK ;
 unsigned long NFT_META_SECS_PER_DAY ;
 unsigned long NFT_META_SECS_PER_MINUTE ;
 TYPE_1__ sys_tz ;

__attribute__((used)) static u8 nft_meta_weekday(unsigned long secs)
{
 unsigned int dse;
 u8 wday;

 secs -= NFT_META_SECS_PER_MINUTE * sys_tz.tz_minuteswest;
 dse = secs / NFT_META_SECS_PER_DAY;
 wday = (4 + dse) % NFT_META_DAYS_PER_WEEK;

 return wday;
}
