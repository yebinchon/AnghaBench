
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uac_mixer_unit_descriptor {int dummy; } ;





 int* uac_mixer_unit_bmControls (struct uac_mixer_unit_descriptor*,int) ;

__attribute__((used)) static bool mixer_bitmap_overflow(struct uac_mixer_unit_descriptor *desc,
      int protocol, int num_ins, int num_outs)
{
 u8 *hdr = (u8 *)desc;
 u8 *c = uac_mixer_unit_bmControls(desc, protocol);
 size_t rest;

 switch (protocol) {
 case 130:
 default:
  rest = 1;
  break;
 case 129:
  rest = 2;
  break;
 case 128:
  rest = 6;
  break;
 }


 return c + (num_ins * num_outs + 7) / 8 + rest > hdr + hdr[0];
}
