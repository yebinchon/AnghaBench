
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ transfer_delay; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct amdtp_stream {unsigned int sfc; unsigned int data_block_quadlets; unsigned int syt_interval; scalar_t__ direction; int flags; TYPE_2__ ctx_data; } ;


 scalar_t__ AMDTP_OUT_STREAM ;
 unsigned int ARRAY_SIZE (unsigned int*) ;
 int CIP_BLOCKING ;
 int EINVAL ;
 scalar_t__ TICKS_PER_CYCLE ;
 unsigned int TICKS_PER_SECOND ;
 scalar_t__ TRANSFER_DELAY_TICKS ;
 unsigned int* amdtp_rate_table ;
 unsigned int* amdtp_syt_intervals ;

int amdtp_stream_set_parameters(struct amdtp_stream *s, unsigned int rate,
    unsigned int data_block_quadlets)
{
 unsigned int sfc;

 for (sfc = 0; sfc < ARRAY_SIZE(amdtp_rate_table); ++sfc) {
  if (amdtp_rate_table[sfc] == rate)
   break;
 }
 if (sfc == ARRAY_SIZE(amdtp_rate_table))
  return -EINVAL;

 s->sfc = sfc;
 s->data_block_quadlets = data_block_quadlets;
 s->syt_interval = amdtp_syt_intervals[sfc];


 if (s->direction == AMDTP_OUT_STREAM) {
  s->ctx_data.rx.transfer_delay =
     TRANSFER_DELAY_TICKS - TICKS_PER_CYCLE;

  if (s->flags & CIP_BLOCKING) {


   s->ctx_data.rx.transfer_delay +=
    TICKS_PER_SECOND * s->syt_interval / rate;
  }
 }

 return 0;
}
