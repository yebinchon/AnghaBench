
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_substream {int direction; scalar_t__ channels_max; struct snd_usb_stream* stream; struct snd_usb_power_domain* str_pd; int ep_num; int fmt_type; int num_formats; int formats; int fmt_list; scalar_t__ pkt_offset_adj; int dev; int speed; int tx_length_quirk; int txfr_quirk; int lock; } ;
struct snd_usb_stream {TYPE_1__* chip; int pcm; struct snd_usb_substream* substream; } ;
struct snd_usb_power_domain {int dummy; } ;
struct audioformat {scalar_t__ channels; int endpoint; int fmt_type; int formats; int list; } ;
struct TYPE_2__ {int tx_length_quirk; int txfr_quirk; int dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int UAC3_PD_STATE_D1 ;
 int list_add_tail (int *,int *) ;
 int snd_usb_get_speed (int ) ;
 int snd_usb_power_domain_set (TYPE_1__*,struct snd_usb_power_domain*,int ) ;
 int snd_usb_preallocate_buffer (struct snd_usb_substream*) ;
 int snd_usb_set_pcm_ops (int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void snd_usb_init_substream(struct snd_usb_stream *as,
       int stream,
       struct audioformat *fp,
       struct snd_usb_power_domain *pd)
{
 struct snd_usb_substream *subs = &as->substream[stream];

 INIT_LIST_HEAD(&subs->fmt_list);
 spin_lock_init(&subs->lock);

 subs->stream = as;
 subs->direction = stream;
 subs->dev = as->chip->dev;
 subs->txfr_quirk = as->chip->txfr_quirk;
 subs->tx_length_quirk = as->chip->tx_length_quirk;
 subs->speed = snd_usb_get_speed(subs->dev);
 subs->pkt_offset_adj = 0;

 snd_usb_set_pcm_ops(as->pcm, stream);

 list_add_tail(&fp->list, &subs->fmt_list);
 subs->formats |= fp->formats;
 subs->num_formats++;
 subs->fmt_type = fp->fmt_type;
 subs->ep_num = fp->endpoint;
 if (fp->channels > subs->channels_max)
  subs->channels_max = fp->channels;

 if (pd) {
  subs->str_pd = pd;

  snd_usb_power_domain_set(subs->stream->chip, pd,
      UAC3_PD_STATE_D1);
 }

 snd_usb_preallocate_buffer(subs);
}
