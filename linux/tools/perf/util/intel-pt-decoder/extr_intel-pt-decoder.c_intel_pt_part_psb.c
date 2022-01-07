
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {unsigned char* buf; size_t len; } ;


 int INTEL_PT_PSB_LEN ;
 int INTEL_PT_PSB_STR ;
 int memcmp (unsigned char const*,int ,size_t) ;

__attribute__((used)) static int intel_pt_part_psb(struct intel_pt_decoder *decoder)
{
 const unsigned char *end = decoder->buf + decoder->len;
 size_t i;

 for (i = INTEL_PT_PSB_LEN - 1; i; i--) {
  if (i > decoder->len)
   continue;
  if (!memcmp(end - i, INTEL_PT_PSB_STR, i))
   return i;
 }
 return 0;
}
