
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {int wcreg; } ;


 int RME96_WCR_BITPOS_GAIN_0 ;
 int RME96_WCR_BITPOS_GAIN_1 ;

__attribute__((used)) static int
snd_rme96_getattenuation(struct rme96 *rme96)
{
 return ((rme96->wcreg >> RME96_WCR_BITPOS_GAIN_0) & 1) +
  (((rme96->wcreg >> RME96_WCR_BITPOS_GAIN_1) & 1) << 1);
}
