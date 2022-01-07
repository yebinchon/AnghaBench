
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aw2_saa7146 {int dummy; } ;


 int BaseA1_in ;
 int PageA1_in ;
 int ProtA1_in ;
 int WRITEREG (unsigned long,int ) ;
 int pr_err (char*) ;
 unsigned long snd_aw2_saa7146_get_limit (unsigned long) ;

void snd_aw2_saa7146_pcm_init_capture(struct snd_aw2_saa7146 *chip,
          int stream_number, unsigned long dma_addr,
          unsigned long period_size,
          unsigned long buffer_size)
{
 unsigned long dw_page, dw_limit;
 dw_page = (0L << 11);
 dw_limit = snd_aw2_saa7146_get_limit(period_size);
 dw_page |= (dw_limit << 4);

 if (stream_number == 0) {
  WRITEREG(dw_page, PageA1_in);




  WRITEREG(dma_addr, BaseA1_in);


  WRITEREG(dma_addr + buffer_size, ProtA1_in);
 } else {
  pr_err("aw2: snd_aw2_saa7146_pcm_init_capture: "
         "Substream number is not 0 -> not managed\n");
 }
}
