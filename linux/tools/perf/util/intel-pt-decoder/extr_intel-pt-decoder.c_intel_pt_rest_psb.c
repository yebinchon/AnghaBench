
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {size_t len; int buf; } ;


 int INTEL_PT_PSB_LEN ;
 char* INTEL_PT_PSB_STR ;
 scalar_t__ memcmp (int ,char const*,size_t) ;

__attribute__((used)) static int intel_pt_rest_psb(struct intel_pt_decoder *decoder, int part_psb)
{
 size_t rest_psb = INTEL_PT_PSB_LEN - part_psb;
 const char *psb = INTEL_PT_PSB_STR;

 if (rest_psb > decoder->len ||
     memcmp(decoder->buf, psb + part_psb, rest_psb))
  return 0;

 return rest_psb;
}
