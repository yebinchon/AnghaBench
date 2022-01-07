
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {size_t capture_con_virt_addr; } ;
typedef size_t snd_pcm_uframes_t ;
struct TYPE_2__ {size_t buffer_size; } ;


 int CONCAP_ADDR ;
 int ICE1712_IREG_CAP_CTRL ;
 int ICEREG (struct snd_ice1712*,int ) ;
 size_t bytes_to_frames (TYPE_1__*,size_t) ;
 size_t inl (int ) ;
 int snd_ice1712_read (struct snd_ice1712*,int ) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_ice1712_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 size_t ptr;

 if (!(snd_ice1712_read(ice, ICE1712_IREG_CAP_CTRL) & 1))
  return 0;
 ptr = inl(ICEREG(ice, CONCAP_ADDR)) - ice->capture_con_virt_addr;
 ptr = bytes_to_frames(substream->runtime, ptr);
 if (ptr == substream->runtime->buffer_size)
  ptr = 0;
 return ptr;
}
