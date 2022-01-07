
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_snd_front_pcm_stream_info {TYPE_1__* evt_pair; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int req; } ;


 int EINVAL ;




 int XENSND_OP_TRIGGER_PAUSE ;
 int XENSND_OP_TRIGGER_RESUME ;
 int XENSND_OP_TRIGGER_START ;
 int XENSND_OP_TRIGGER_STOP ;
 struct xen_snd_front_pcm_stream_info* stream_get (struct snd_pcm_substream*) ;
 int xen_snd_front_stream_trigger (int *,int) ;

__attribute__((used)) static int alsa_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct xen_snd_front_pcm_stream_info *stream = stream_get(substream);
 int type;

 switch (cmd) {
 case 130:
  type = XENSND_OP_TRIGGER_START;
  break;

 case 131:
  type = XENSND_OP_TRIGGER_RESUME;
  break;

 case 129:
  type = XENSND_OP_TRIGGER_STOP;
  break;

 case 128:
  type = XENSND_OP_TRIGGER_PAUSE;
  break;

 default:
  return -EINVAL;
 }

 return xen_snd_front_stream_trigger(&stream->evt_pair->req, type);
}
