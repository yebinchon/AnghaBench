
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_ht_sta {int avg_ampdu_len; } ;


 unsigned int AVG_AMPDU_SIZE ;
 unsigned int MINSTREL_TRUNC (int ) ;

__attribute__((used)) static unsigned int
minstrel_ht_avg_ampdu_len(struct minstrel_ht_sta *mi)
{
 if (!mi->avg_ampdu_len)
  return AVG_AMPDU_SIZE;

 return MINSTREL_TRUNC(mi->avg_ampdu_len);
}
