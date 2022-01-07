
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola_stream {int dsd; scalar_t__ prepared; int substream; scalar_t__ paused; } ;
struct lola {int dummy; } ;


 int BDPL ;
 int BDPU ;
 int CTL ;
 int LOLA_DSD_CTL_DEIE ;
 int LOLA_DSD_CTL_IOCE ;
 int LOLA_DSD_CTL_SRST ;
 int LVI ;
 int lola_dsd_write (struct lola*,int ,int ,int) ;
 int lola_stream_clear_pending_irq (struct lola*,struct lola_stream*) ;
 int lola_stream_wait_for_fifo (struct lola*,struct lola_stream*,int) ;
 int lola_sync_pause (struct lola*,int ) ;
 int wait_for_srst_clear (struct lola*,struct lola_stream*) ;

__attribute__((used)) static void lola_stream_reset(struct lola *chip, struct lola_stream *str)
{
 if (str->prepared) {
  if (str->paused)
   lola_sync_pause(chip, str->substream);
  str->prepared = 0;
  lola_dsd_write(chip, str->dsd, CTL,
          LOLA_DSD_CTL_IOCE | LOLA_DSD_CTL_DEIE);
  lola_stream_wait_for_fifo(chip, str, 0);
  lola_stream_clear_pending_irq(chip, str);
  lola_dsd_write(chip, str->dsd, CTL, LOLA_DSD_CTL_SRST);
  lola_dsd_write(chip, str->dsd, LVI, 0);
  lola_dsd_write(chip, str->dsd, BDPU, 0);
  lola_dsd_write(chip, str->dsd, BDPL, 0);
  wait_for_srst_clear(chip, str);
 }
}
