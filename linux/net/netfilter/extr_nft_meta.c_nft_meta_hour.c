
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tm {int tm_hour; int tm_min; scalar_t__ tm_sec; } ;


 int NFT_META_SECS_PER_HOUR ;
 int NFT_META_SECS_PER_MINUTE ;
 int time64_to_tm (unsigned long,int ,struct tm*) ;

__attribute__((used)) static u32 nft_meta_hour(unsigned long secs)
{
 struct tm tm;

 time64_to_tm(secs, 0, &tm);

 return tm.tm_hour * NFT_META_SECS_PER_HOUR
  + tm.tm_min * NFT_META_SECS_PER_MINUTE
  + tm.tm_sec;
}
