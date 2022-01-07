
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {int wcreg; } ;


 int RME32_WCR_BITPOS_INP_0 ;
 int RME32_WCR_BITPOS_INP_1 ;

__attribute__((used)) static int snd_rme32_getinputtype(struct rme32 * rme32)
{
 return ((rme32->wcreg >> RME32_WCR_BITPOS_INP_0) & 1) +
     (((rme32->wcreg >> RME32_WCR_BITPOS_INP_1) & 1) << 1);
}
