
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int buf; unsigned char* pkt_step; scalar_t__ len; int pos; } ;


 int INTEL_PT_PSB_LEN ;
 int INTEL_PT_PSB_STR ;
 int intel_pt_get_next_data (struct intel_pt_decoder*,int) ;
 int intel_pt_get_next_packet (struct intel_pt_decoder*) ;
 int intel_pt_get_split_psb (struct intel_pt_decoder*,int) ;
 int intel_pt_log (char*) ;
 int intel_pt_part_psb (struct intel_pt_decoder*) ;
 unsigned char* memmem (int,scalar_t__,int ,int ) ;

__attribute__((used)) static int intel_pt_scan_for_psb(struct intel_pt_decoder *decoder)
{
 unsigned char *next;
 int ret;

 intel_pt_log("Scanning for PSB\n");
 while (1) {
  if (!decoder->len) {
   ret = intel_pt_get_next_data(decoder, 0);
   if (ret)
    return ret;
  }

  next = memmem(decoder->buf, decoder->len, INTEL_PT_PSB_STR,
         INTEL_PT_PSB_LEN);
  if (!next) {
   int part_psb;

   part_psb = intel_pt_part_psb(decoder);
   if (part_psb) {
    ret = intel_pt_get_split_psb(decoder, part_psb);
    if (ret)
     return ret;
   } else {
    decoder->pos += decoder->len;
    decoder->len = 0;
   }
   continue;
  }

  decoder->pkt_step = next - decoder->buf;
  return intel_pt_get_next_packet(decoder);
 }
}
