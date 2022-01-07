
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hdsp {int lock; int running; } ;


 int EIO ;
 scalar_t__ hdsp_check_for_firmware (struct hdsp*,int) ;
 scalar_t__ hdsp_check_for_iobox (struct hdsp*) ;
 int hdsp_reset_hw_pointer (struct hdsp*) ;
 struct hdsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_prepare(struct snd_pcm_substream *substream)
{
 struct hdsp *hdsp = snd_pcm_substream_chip(substream);
 int result = 0;

 if (hdsp_check_for_iobox (hdsp))
  return -EIO;

 if (hdsp_check_for_firmware(hdsp, 1))
  return -EIO;

 spin_lock_irq(&hdsp->lock);
 if (!hdsp->running)
  hdsp_reset_hw_pointer(hdsp);
 spin_unlock_irq(&hdsp->lock);
 return result;
}
