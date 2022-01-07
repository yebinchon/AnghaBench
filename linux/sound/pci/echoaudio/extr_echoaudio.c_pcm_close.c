
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct echoaudio {int can_set_rate; scalar_t__ rate_set; TYPE_1__* card; int opencount; } ;
struct TYPE_2__ {int dev; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int dev_dbg (int ,char*,int,int,scalar_t__) ;
 struct echoaudio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_close(struct snd_pcm_substream *substream)
{
 struct echoaudio *chip = snd_pcm_substream_chip(substream);
 int oc;





 atomic_dec(&chip->opencount);
 oc = atomic_read(&chip->opencount);
 dev_dbg(chip->card->dev, "pcm_close  oc=%d  cs=%d  rs=%d\n", oc,
  chip->can_set_rate, chip->rate_set);
 if (oc < 2)
  chip->can_set_rate = 1;
 if (oc == 0)
  chip->rate_set = 0;
 dev_dbg(chip->card->dev, "pcm_close2 oc=%d  cs=%d  rs=%d\n", oc,
  chip->can_set_rate, chip->rate_set);

 return 0;
}
