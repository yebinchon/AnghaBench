
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_unit {int dummy; } ;
struct TYPE_3__ {int syt_override; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct amdtp_stream {int direction; int flags; int callbacked; unsigned int fmt; TYPE_2__ ctx_data; int * process_ctx_payloads; int callback_wait; scalar_t__ packet_index; int period_tasklet; int mutex; int context; struct fw_unit* unit; int protocol; } ;
typedef enum cip_flags { ____Placeholder_cip_flags } cip_flags ;
typedef enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;
typedef int * amdtp_stream_process_ctx_payloads_t ;


 int AMDTP_OUT_STREAM ;
 int EINVAL ;
 int ENOMEM ;
 int ERR_PTR (int) ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 int kzalloc (unsigned int,int ) ;
 int mutex_init (int *) ;
 int pcm_period_tasklet ;
 int tasklet_init (int *,int ,unsigned long) ;

int amdtp_stream_init(struct amdtp_stream *s, struct fw_unit *unit,
        enum amdtp_stream_direction dir, enum cip_flags flags,
        unsigned int fmt,
        amdtp_stream_process_ctx_payloads_t process_ctx_payloads,
        unsigned int protocol_size)
{
 if (process_ctx_payloads == ((void*)0))
  return -EINVAL;

 s->protocol = kzalloc(protocol_size, GFP_KERNEL);
 if (!s->protocol)
  return -ENOMEM;

 s->unit = unit;
 s->direction = dir;
 s->flags = flags;
 s->context = ERR_PTR(-1);
 mutex_init(&s->mutex);
 tasklet_init(&s->period_tasklet, pcm_period_tasklet, (unsigned long)s);
 s->packet_index = 0;

 init_waitqueue_head(&s->callback_wait);
 s->callbacked = 0;

 s->fmt = fmt;
 s->process_ctx_payloads = process_ctx_payloads;

 if (dir == AMDTP_OUT_STREAM)
  s->ctx_data.rx.syt_override = -1;

 return 0;
}
