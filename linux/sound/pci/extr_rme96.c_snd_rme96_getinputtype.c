
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {int areg; int wcreg; } ;


 int RME96_AR_ANALOG ;
 int RME96_INPUT_ANALOG ;
 int RME96_WCR_BITPOS_INP_0 ;
 int RME96_WCR_BITPOS_INP_1 ;

__attribute__((used)) static int
snd_rme96_getinputtype(struct rme96 *rme96)
{
 if (rme96->areg & RME96_AR_ANALOG) {
  return RME96_INPUT_ANALOG;
 }
 return ((rme96->wcreg >> RME96_WCR_BITPOS_INP_0) & 1) +
  (((rme96->wcreg >> RME96_WCR_BITPOS_INP_1) & 1) << 1);
}
