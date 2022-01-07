
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_endpoint {scalar_t__ use_count; int fill_max; int type; int nurbs; int ep_num; TYPE_1__* chip; scalar_t__ phase; int freqshift; int freqn; int freqm; int maxpacksize; int datainterval; } ;
struct audioformat {int attributes; int maxpacksize; int datainterval; } ;
typedef int snd_pcm_format_t ;
struct TYPE_3__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int INT_MIN ;


 int UAC_EP_CS_ATTR_FILL_MAX ;
 scalar_t__ USB_SPEED_FULL ;
 int data_ep_set_params (struct snd_usb_endpoint*,int ,unsigned int,unsigned int,unsigned int,unsigned int,struct audioformat*,struct snd_usb_endpoint*) ;
 int get_usb_full_speed_rate (unsigned int) ;
 int get_usb_high_speed_rate (unsigned int) ;
 int release_urbs (struct snd_usb_endpoint*,int ) ;
 scalar_t__ snd_usb_get_speed (int ) ;
 int sync_ep_set_params (struct snd_usb_endpoint*) ;
 int usb_audio_dbg (TYPE_1__*,char*,int ,int,int ,int) ;
 int usb_audio_warn (TYPE_1__*,char*,int ) ;

int snd_usb_endpoint_set_params(struct snd_usb_endpoint *ep,
    snd_pcm_format_t pcm_format,
    unsigned int channels,
    unsigned int period_bytes,
    unsigned int period_frames,
    unsigned int buffer_periods,
    unsigned int rate,
    struct audioformat *fmt,
    struct snd_usb_endpoint *sync_ep)
{
 int err;

 if (ep->use_count != 0) {
  usb_audio_warn(ep->chip,
    "Unable to change format on ep #%x: already in use\n",
    ep->ep_num);
  return -EBUSY;
 }


 release_urbs(ep, 0);

 ep->datainterval = fmt->datainterval;
 ep->maxpacksize = fmt->maxpacksize;
 ep->fill_max = !!(fmt->attributes & UAC_EP_CS_ATTR_FILL_MAX);

 if (snd_usb_get_speed(ep->chip->dev) == USB_SPEED_FULL)
  ep->freqn = get_usb_full_speed_rate(rate);
 else
  ep->freqn = get_usb_high_speed_rate(rate);


 ep->freqm = ep->freqn;
 ep->freqshift = INT_MIN;

 ep->phase = 0;

 switch (ep->type) {
 case 129:
  err = data_ep_set_params(ep, pcm_format, channels,
      period_bytes, period_frames,
      buffer_periods, fmt, sync_ep);
  break;
 case 128:
  err = sync_ep_set_params(ep);
  break;
 default:
  err = -EINVAL;
 }

 usb_audio_dbg(ep->chip,
  "Setting params for ep #%x (type %d, %d urbs), ret=%d\n",
  ep->ep_num, ep->type, ep->nurbs, err);

 return err;
}
