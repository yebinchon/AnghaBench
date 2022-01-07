
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcxhr_mgr {int capture_chips; } ;


 int EINVAL ;
 int PCXHR_DATA_CODEC ;
 int PCXHR_INPB (struct pcxhr_mgr*,int ) ;
 int PCXHR_OUTPB (struct pcxhr_mgr*,int ,int ) ;
 int PCXHR_XLX_DATA ;
 int PCXHR_XLX_RUER ;

__attribute__((used)) static int hr222_set_hw_capture_level(struct pcxhr_mgr *mgr,
          int level_l, int level_r, int level_mic)
{

 unsigned int data;
 int i;

 if (!mgr->capture_chips)
  return -EINVAL;

 data = ((level_mic & 0xff) << 24);
 data |= ((level_mic & 0xff) << 16);
 data |= ((level_r & 0xff) << 8);
 data |= (level_l & 0xff);

 PCXHR_INPB(mgr, PCXHR_XLX_DATA);

 for (i = 0; i < 32; i++, data <<= 1) {
  PCXHR_OUTPB(mgr, PCXHR_XLX_DATA,
       (data & 0x80000000) ? PCXHR_DATA_CODEC : 0);
 }
 PCXHR_INPB(mgr, PCXHR_XLX_RUER);
 return 0;
}
