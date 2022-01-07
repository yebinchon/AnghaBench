
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aw2_saa7146 {int dummy; } ;


 int BaseA1_out ;
 int BaseA2_out ;
 int PageA1_out ;
 int PageA2_out ;
 int ProtA1_out ;
 int ProtA2_out ;
 int WRITEREG (unsigned long,int ) ;
 int pr_err (char*) ;
 unsigned long snd_aw2_saa7146_get_limit (unsigned long) ;

void snd_aw2_saa7146_pcm_init_playback(struct snd_aw2_saa7146 *chip,
           int stream_number,
           unsigned long dma_addr,
           unsigned long period_size,
           unsigned long buffer_size)
{
 unsigned long dw_page, dw_limit;
 dw_page = (0L << 11);
 dw_limit = snd_aw2_saa7146_get_limit(period_size);
 dw_page |= (dw_limit << 4);

 if (stream_number == 0) {
  WRITEREG(dw_page, PageA2_out);




  WRITEREG(dma_addr, BaseA2_out);


  WRITEREG(dma_addr + buffer_size, ProtA2_out);

 } else if (stream_number == 1) {
  WRITEREG(dw_page, PageA1_out);




  WRITEREG(dma_addr, BaseA1_out);


  WRITEREG(dma_addr + buffer_size, ProtA1_out);
 } else {
  pr_err("aw2: snd_aw2_saa7146_pcm_init_playback: "
         "Substream number is not 0 or 1 -> not managed\n");
 }
}
