
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct isight* private_data; } ;
struct isight {int pcm_running; } ;


 int EINVAL ;


 int WRITE_ONCE (int ,int) ;

__attribute__((used)) static int isight_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct isight *isight = substream->private_data;

 switch (cmd) {
 case 129:
  WRITE_ONCE(isight->pcm_running, 1);
  break;
 case 128:
  WRITE_ONCE(isight->pcm_running, 0);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
