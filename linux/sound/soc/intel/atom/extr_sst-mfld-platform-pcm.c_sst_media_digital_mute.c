
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int sst_send_pipe_gains (struct snd_soc_dai*,int,int) ;

__attribute__((used)) static int sst_media_digital_mute(struct snd_soc_dai *dai, int mute, int stream)
{

 return sst_send_pipe_gains(dai, stream, mute);
}
