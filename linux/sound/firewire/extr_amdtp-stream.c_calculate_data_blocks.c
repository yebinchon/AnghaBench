
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int data_block_state; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct amdtp_stream {int flags; unsigned int syt_interval; int sfc; TYPE_2__ ctx_data; } ;


 int CIP_BLOCKING ;
 int CIP_SFC_44100 ;
 unsigned int CIP_SYT_NO_INFO ;
 int cip_sfc_is_base_44100 (int) ;

__attribute__((used)) static unsigned int calculate_data_blocks(struct amdtp_stream *s,
       unsigned int syt)
{
 unsigned int phase, data_blocks;


 if (s->flags & CIP_BLOCKING) {

  if (syt == CIP_SYT_NO_INFO)
   data_blocks = 0;
  else
   data_blocks = s->syt_interval;

 } else {
  if (!cip_sfc_is_base_44100(s->sfc)) {

   data_blocks = s->ctx_data.rx.data_block_state;
  } else {
   phase = s->ctx_data.rx.data_block_state;
   if (s->sfc == CIP_SFC_44100)

    data_blocks = 5 + ((phase & 1) ^
         (phase == 0 || phase >= 40));
   else

    data_blocks = 11 * (s->sfc >> 1) + (phase == 0);
   if (++phase >= (80 >> (s->sfc >> 1)))
    phase = 0;
   s->ctx_data.rx.data_block_state = phase;
  }
 }

 return data_blocks;
}
