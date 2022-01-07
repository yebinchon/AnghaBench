
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int dummy; } ;


 int EINVAL ;






 int __dma_enable (struct axg_fifo*,int) ;
 struct axg_fifo* axg_fifo_data (struct snd_pcm_substream*) ;

__attribute__((used)) static int axg_fifo_pcm_trigger(struct snd_pcm_substream *ss, int cmd)
{
 struct axg_fifo *fifo = axg_fifo_data(ss);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  __dma_enable(fifo, 1);
  break;
 case 128:
 case 133:
 case 129:
  __dma_enable(fifo, 0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
