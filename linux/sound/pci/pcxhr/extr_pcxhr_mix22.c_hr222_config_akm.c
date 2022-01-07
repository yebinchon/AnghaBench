
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {int dummy; } ;


 int PCXHR_DATA_CODEC ;
 int PCXHR_INPB (struct pcxhr_mgr*,int ) ;
 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,int ) ;
 int PCXHR_XLX_DATA ;
 int PCXHR_XLX_HIFREQ ;
 int PCXHR_XLX_RUER ;

__attribute__((used)) static void hr222_config_akm(struct pcxhr_mgr *mgr, unsigned short data)
{
 unsigned short mask = 0x8000;

 PCXHR_INPB(mgr, PCXHR_XLX_HIFREQ);

 while (mask) {
  PCXHR_OUTPB(mgr, PCXHR_XLX_DATA,
       data & mask ? PCXHR_DATA_CODEC : 0);
  mask >>= 1;
 }

 PCXHR_INPB(mgr, PCXHR_XLX_RUER);
}
