
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int IEC958_AES0_PROFESSIONAL ;
 int IEC958_AES0_PRO_FS ;




 int IEC958_AES2_PRO_SBITS ;


 int IEC958_AES2_PRO_WORDLEN ;





 int IEC958_AES3_CON_FS ;



 int IEC958_AES4_CON_MAX_WORDLEN_24 ;
 int IEC958_AES4_CON_WORDLEN ;






 int XLNX_PARAM_UNKNOWN ;
 int dev_info (struct device*,char*,...) ;

__attribute__((used)) static void xlnx_parse_aes_params(u32 chsts_reg1_val, u32 chsts_reg2_val,
      struct device *dev)
{
 u32 padded, srate, bit_depth, status[2];

 if (chsts_reg1_val & IEC958_AES0_PROFESSIONAL) {
  status[0] = chsts_reg1_val & 0xff;
  status[1] = (chsts_reg1_val >> 16) & 0xff;

  switch (status[0] & IEC958_AES0_PRO_FS) {
  case 146:
   srate = 44100;
   break;
  case 145:
   srate = 48000;
   break;
  case 147:
   srate = 32000;
   break;
  case 144:
  default:
   srate = XLNX_PARAM_UNKNOWN;
   break;
  }

  switch (status[1] & IEC958_AES2_PRO_SBITS) {
  case 137:
  case 143:
   padded = 0;
   break;
  case 142:
   padded = 4;
   break;
  default:
   bit_depth = XLNX_PARAM_UNKNOWN;
   goto log_params;
  }

  switch (status[1] & IEC958_AES2_PRO_WORDLEN) {
  case 141:
   bit_depth = 16 + padded;
   break;
  case 140:
   bit_depth = 18 + padded;
   break;
  case 139:
   bit_depth = 19 + padded;
   break;
  case 138:
   bit_depth = 20 + padded;
   break;
  case 137:
  default:
   bit_depth = XLNX_PARAM_UNKNOWN;
   break;
  }

 } else {
  status[0] = (chsts_reg1_val >> 24) & 0xff;
  status[1] = chsts_reg2_val & 0xff;

  switch (status[0] & IEC958_AES3_CON_FS) {
  case 135:
   srate = 44100;
   break;
  case 134:
   srate = 48000;
   break;
  case 136:
   srate = 32000;
   break;
  default:
   srate = XLNX_PARAM_UNKNOWN;
   break;
  }

  if (status[1] & IEC958_AES4_CON_MAX_WORDLEN_24)
   padded = 4;
  else
   padded = 0;

  switch (status[1] & IEC958_AES4_CON_WORDLEN) {
  case 133:
   bit_depth = 16 + padded;
   break;
  case 131:
   bit_depth = 18 + padded;
   break;
  case 130:
   bit_depth = 19 + padded;
   break;
  case 129:
   bit_depth = 20 + padded;
   break;
  case 132:
   bit_depth = 17 + padded;
   break;
  case 128:
  default:
   bit_depth = XLNX_PARAM_UNKNOWN;
   break;
  }
 }

log_params:
 if (srate != XLNX_PARAM_UNKNOWN)
  dev_info(dev, "sample rate = %d\n", srate);
 else
  dev_info(dev, "sample rate = unknown\n");

 if (bit_depth != XLNX_PARAM_UNKNOWN)
  dev_info(dev, "bit_depth = %d\n", bit_depth);
 else
  dev_info(dev, "bit_depth = unknown\n");
}
