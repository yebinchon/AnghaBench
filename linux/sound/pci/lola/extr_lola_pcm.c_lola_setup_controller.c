
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lola_stream {int prepared; int index; int frags; int dsd; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct lola_pcm {TYPE_1__ bdl; } ;
struct lola {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int BDPL ;
 int BDPU ;
 int CTL ;
 int EINVAL ;
 int LOLA_BDL_ENTRY_SIZE ;
 int LOLA_DSD_CTL_DEIE ;
 int LOLA_DSD_CTL_IOCE ;
 int LOLA_DSD_CTL_SRUN ;
 int LVI ;
 int lola_dsd_write (struct lola*,int ,int ,int) ;
 int lola_stream_clear_pending_irq (struct lola*,struct lola_stream*) ;
 int lola_stream_wait_for_fifo (struct lola*,struct lola_stream*,int) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int lola_setup_controller(struct lola *chip, struct lola_pcm *pcm,
     struct lola_stream *str)
{
 dma_addr_t bdl;

 if (str->prepared)
  return -EINVAL;


 bdl = pcm->bdl.addr + LOLA_BDL_ENTRY_SIZE * str->index;
 lola_dsd_write(chip, str->dsd, BDPL, (u32)bdl);
 lola_dsd_write(chip, str->dsd, BDPU, upper_32_bits(bdl));

 lola_dsd_write(chip, str->dsd, LVI, str->frags - 1);
 lola_stream_clear_pending_irq(chip, str);

  lola_dsd_write(chip, str->dsd, CTL,
         LOLA_DSD_CTL_IOCE | LOLA_DSD_CTL_DEIE | LOLA_DSD_CTL_SRUN);

 str->prepared = 1;

 return lola_stream_wait_for_fifo(chip, str, 1);
}
