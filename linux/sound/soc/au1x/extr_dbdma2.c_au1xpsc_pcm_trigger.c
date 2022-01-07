
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int ddma_chan; } ;


 int EINVAL ;




 int au1xxx_dbdma_start (int ) ;
 int au1xxx_dbdma_stop (int ) ;
 TYPE_1__* to_dmadata (struct snd_pcm_substream*) ;

__attribute__((used)) static int au1xpsc_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 u32 c = to_dmadata(substream)->ddma_chan;

 switch (cmd) {
 case 130:
 case 131:
  au1xxx_dbdma_start(c);
  break;
 case 129:
 case 128:
  au1xxx_dbdma_stop(c);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
