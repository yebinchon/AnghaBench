
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int EINVAL ;


__attribute__((used)) static int had_calculate_n_value(u32 aud_samp_freq)
{
 int n_val;


 switch (aud_samp_freq) {
 case 133:
  n_val = 4096;
  break;

 case 132:
  n_val = 6272;
  break;

 case 131:
  n_val = 6144;
  break;

 case 130:
  n_val = 12544;
  break;

 case 129:
  n_val = 12288;
  break;

 case 134:
  n_val = 25088;
  break;

 case 128:
  n_val = 24576;
  break;

 default:
  n_val = -EINVAL;
  break;
 }
 return n_val;
}
