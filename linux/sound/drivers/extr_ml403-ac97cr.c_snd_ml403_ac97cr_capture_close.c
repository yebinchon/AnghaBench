
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ml403_ac97cr {int * capture_substream; } ;


 int PDEBUG (int ,char*) ;
 int WORK_INFO ;
 struct snd_ml403_ac97cr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ml403_ac97cr_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_ml403_ac97cr *ml403_ac97cr;

 ml403_ac97cr = snd_pcm_substream_chip(substream);

 PDEBUG(WORK_INFO, "close(capture)\n");
 ml403_ac97cr->capture_substream = ((void*)0);
 return 0;
}
