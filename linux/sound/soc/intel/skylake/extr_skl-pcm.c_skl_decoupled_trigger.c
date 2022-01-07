
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdac_stream {int prepared; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {int reg_lock; } ;


 int EINVAL ;
 int EPIPE ;






 struct hdac_bus* get_bus_ctx (struct snd_pcm_substream*) ;
 struct hdac_ext_stream* get_hdac_ext_stream (struct snd_pcm_substream*) ;
 struct hdac_stream* hdac_stream (struct hdac_ext_stream*) ;
 int snd_hdac_stream_start (struct hdac_stream*,int) ;
 int snd_hdac_stream_stop (struct hdac_stream*) ;
 int snd_hdac_stream_timecounter_init (struct hdac_stream*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int skl_decoupled_trigger(struct snd_pcm_substream *substream,
  int cmd)
{
 struct hdac_bus *bus = get_bus_ctx(substream);
 struct hdac_ext_stream *stream;
 int start;
 unsigned long cookie;
 struct hdac_stream *hstr;

 stream = get_hdac_ext_stream(substream);
 hstr = hdac_stream(stream);

 if (!hstr->prepared)
  return -EPIPE;

 switch (cmd) {
 case 130:
 case 132:
 case 131:
  start = 1;
  break;

 case 133:
 case 128:
 case 129:
  start = 0;
  break;

 default:
  return -EINVAL;
 }

 spin_lock_irqsave(&bus->reg_lock, cookie);

 if (start) {
  snd_hdac_stream_start(hdac_stream(stream), 1);
  snd_hdac_stream_timecounter_init(hstr, 0);
 } else {
  snd_hdac_stream_stop(hdac_stream(stream));
 }

 spin_unlock_irqrestore(&bus->reg_lock, cookie);

 return 0;
}
