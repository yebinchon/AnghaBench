
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ inl (int ) ;
 int pm_tmr_ioport ;

__attribute__((used)) static u32 read_pmtmr(void)
{
 u32 v1=0,v2=0,v3=0;





 do {
  v1 = inl(pm_tmr_ioport);
  v2 = inl(pm_tmr_ioport);
  v3 = inl(pm_tmr_ioport);
 } while ((v1 > v2 && v1 < v3) || (v2 > v3 && v2 < v1)
   || (v3 > v1 && v3 < v2));


 return (v2 & 0xFFFFFF);
}
