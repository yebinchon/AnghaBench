
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_unit {int dummy; } ;
struct amdtp_tscm {unsigned int pcm_channels; } ;
struct TYPE_3__ {int fdf; int syt_override; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct amdtp_stream {struct amdtp_tscm* protocol; TYPE_2__ ctx_data; } ;
typedef enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;
typedef int amdtp_stream_process_ctx_payloads_t ;


 unsigned int AMDTP_FMT_TSCM_RX ;
 unsigned int AMDTP_FMT_TSCM_TX ;
 int AMDTP_IN_STREAM ;
 int AMDTP_OUT_STREAM ;
 int CIP_NONBLOCKING ;
 int CIP_SKIP_DBC_ZERO_CHECK ;
 int amdtp_stream_init (struct amdtp_stream*,struct fw_unit*,int,int,unsigned int,int ,int) ;
 int process_ir_ctx_payloads ;
 int process_it_ctx_payloads ;

int amdtp_tscm_init(struct amdtp_stream *s, struct fw_unit *unit,
      enum amdtp_stream_direction dir, unsigned int pcm_channels)
{
 amdtp_stream_process_ctx_payloads_t process_ctx_payloads;
 struct amdtp_tscm *p;
 unsigned int fmt;
 int err;

 if (dir == AMDTP_IN_STREAM) {
  fmt = AMDTP_FMT_TSCM_TX;
  process_ctx_payloads = process_ir_ctx_payloads;
 } else {
  fmt = AMDTP_FMT_TSCM_RX;
  process_ctx_payloads = process_it_ctx_payloads;
 }

 err = amdtp_stream_init(s, unit, dir,
   CIP_NONBLOCKING | CIP_SKIP_DBC_ZERO_CHECK, fmt,
   process_ctx_payloads, sizeof(struct amdtp_tscm));
 if (err < 0)
  return 0;

 if (dir == AMDTP_OUT_STREAM) {

  s->ctx_data.rx.fdf = 0x00;

  s->ctx_data.rx.syt_override = 0x0000;
 }


 p = s->protocol;
 p->pcm_channels = pcm_channels;

 return 0;
}
