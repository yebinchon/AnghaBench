
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct axg_fifo {int map; } ;


 int CTRL0_INT_EN (int ) ;
 int FIFO_CTRL0 ;
 int FIFO_INT_COUNT_REPEAT ;
 struct axg_fifo* axg_fifo_data (struct snd_pcm_substream*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int axg_fifo_pcm_hw_free(struct snd_pcm_substream *ss)
{
 struct axg_fifo *fifo = axg_fifo_data(ss);


 regmap_update_bits(fifo->map, FIFO_CTRL0,
      CTRL0_INT_EN(FIFO_INT_COUNT_REPEAT), 0);

 return snd_pcm_lib_free_pages(ss);
}
