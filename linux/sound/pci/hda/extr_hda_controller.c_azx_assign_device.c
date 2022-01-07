
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdac_stream {int dummy; } ;
struct azx_dev {int dummy; } ;
struct azx {int dummy; } ;


 int azx_bus (struct azx*) ;
 struct hdac_stream* snd_hdac_stream_assign (int ,struct snd_pcm_substream*) ;
 struct azx_dev* stream_to_azx_dev (struct hdac_stream*) ;

__attribute__((used)) static inline struct azx_dev *
azx_assign_device(struct azx *chip, struct snd_pcm_substream *substream)
{
 struct hdac_stream *s;

 s = snd_hdac_stream_assign(azx_bus(chip), substream);
 if (!s)
  return ((void*)0);
 return stream_to_azx_dev(s);
}
