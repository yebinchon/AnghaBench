
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {int areg; int wcreg; } ;


 int RME96_AR_WSEL ;
 int RME96_CLOCKMODE_MASTER ;
 int RME96_CLOCKMODE_SLAVE ;
 int RME96_CLOCKMODE_WORDCLOCK ;
 int RME96_WCR_MASTER ;

__attribute__((used)) static int
snd_rme96_getclockmode(struct rme96 *rme96)
{
 if (rme96->areg & RME96_AR_WSEL) {
  return RME96_CLOCKMODE_WORDCLOCK;
 }
 return (rme96->wcreg & RME96_WCR_MASTER) ? RME96_CLOCKMODE_MASTER :
  RME96_CLOCKMODE_SLAVE;
}
