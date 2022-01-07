
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int irq; int pclk; int arb; } ;


 struct axg_fifo* axg_fifo_data (struct snd_pcm_substream*) ;
 int clk_disable_unprepare (int ) ;
 int free_irq (int ,struct snd_pcm_substream*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int axg_fifo_pcm_close(struct snd_pcm_substream *ss)
{
 struct axg_fifo *fifo = axg_fifo_data(ss);
 int ret;


 ret = reset_control_assert(fifo->arb);


 clk_disable_unprepare(fifo->pclk);


 free_irq(fifo->irq, ss);

 return ret;
}
