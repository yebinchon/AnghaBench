
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usX2Ydev {int pcm_devs; struct snd_usX2Y_substream** subs; } ;
struct snd_usX2Y_substream {scalar_t__ pcm_substream; } ;
struct snd_card {int dummy; } ;


 int EBUSY ;
 scalar_t__ SUBSTREAM_BUSY (scalar_t__) ;
 struct usX2Ydev* usX2Y (struct snd_card*) ;

__attribute__((used)) static int usX2Y_pcms_busy_check(struct snd_card *card)
{
 struct usX2Ydev *dev = usX2Y(card);
 int i;

 for (i = 0; i < dev->pcm_devs * 2; i++) {
  struct snd_usX2Y_substream *subs = dev->subs[i];
  if (subs && subs->pcm_substream &&
      SUBSTREAM_BUSY(subs->pcm_substream))
   return -EBUSY;
 }
 return 0;
}
