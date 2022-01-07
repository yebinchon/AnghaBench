
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdspm {int dummy; } ;


 scalar_t__ HDSPM_RD_TCO ;


 int HDSPM_TCO1_LTC_Input_valid ;
 int fps_24 ;
 int fps_25 ;
 int fps_2997 ;
 int fps_30 ;
 int hdspm_read (struct hdspm*,scalar_t__) ;

__attribute__((used)) static int hdspm_tco_ltc_frames(struct hdspm *hdspm)
{
 u32 status;
 int ret = 0;

 status = hdspm_read(hdspm, HDSPM_RD_TCO + 4);
 if (status & HDSPM_TCO1_LTC_Input_valid) {
  switch (status & (129 |
     128)) {
  case 0:

   ret = fps_24;
   break;
  case 129:

   ret = fps_25;
   break;
  case 128:

   ret = fps_2997;
   break;
  default:

   ret = fps_30;
   break;
  }
 }

 return ret;
}
