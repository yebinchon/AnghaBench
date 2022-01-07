
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {int wcreg; } ;


 int RME32_WCR_BITPOS_FREQ_0 ;
 int RME32_WCR_BITPOS_FREQ_1 ;
 int RME32_WCR_DS_BM ;

__attribute__((used)) static int snd_rme32_playback_getrate(struct rme32 * rme32)
{
 int rate;

 rate = ((rme32->wcreg >> RME32_WCR_BITPOS_FREQ_0) & 1) +
        (((rme32->wcreg >> RME32_WCR_BITPOS_FREQ_1) & 1) << 1);
 switch (rate) {
 case 1:
  rate = 32000;
  break;
 case 2:
  rate = 44100;
  break;
 case 3:
  rate = 48000;
  break;
 default:
  return -1;
 }
 return (rme32->wcreg & RME32_WCR_DS_BM) ? rate << 1 : rate;
}
