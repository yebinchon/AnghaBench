
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {scalar_t__ next_len; scalar_t__ next_buf; scalar_t__ len; scalar_t__ buf; } ;


 int intel_pt_get_data (struct intel_pt_decoder*,int) ;

__attribute__((used)) static int intel_pt_get_next_data(struct intel_pt_decoder *decoder,
      bool reposition)
{
 if (!decoder->next_buf)
  return intel_pt_get_data(decoder, reposition);

 decoder->buf = decoder->next_buf;
 decoder->len = decoder->next_len;
 decoder->next_buf = 0;
 decoder->next_len = 0;
 return 0;
}
