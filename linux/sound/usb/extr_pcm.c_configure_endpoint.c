
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_substream {scalar_t__ sync_endpoint; int cur_audiofmt; int cur_rate; int buffer_periods; int period_frames; int period_bytes; int channels; int pcm_format; int data_endpoint; } ;


 int configure_sync_endpoint (struct snd_usb_substream*) ;
 int snd_usb_endpoint_set_params (int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__) ;
 int stop_endpoints (struct snd_usb_substream*,int) ;

__attribute__((used)) static int configure_endpoint(struct snd_usb_substream *subs)
{
 int ret;


 stop_endpoints(subs, 1);
 ret = snd_usb_endpoint_set_params(subs->data_endpoint,
       subs->pcm_format,
       subs->channels,
       subs->period_bytes,
       subs->period_frames,
       subs->buffer_periods,
       subs->cur_rate,
       subs->cur_audiofmt,
       subs->sync_endpoint);
 if (ret < 0)
  return ret;

 if (subs->sync_endpoint)
  ret = configure_sync_endpoint(subs);

 return ret;
}
