
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola_stream {int dsd; } ;
struct lola {int dummy; } ;


 int CTL ;
 unsigned int LOLA_DSD_CTL_DEIE ;
 unsigned int LOLA_DSD_CTL_IOCE ;
 unsigned int LOLA_DSD_CTL_SRUN ;
 unsigned int LOLA_DSD_CTL_VLRCV ;
 int lola_dsd_write (struct lola*,int ,int ,unsigned int) ;
 int lola_stream_clear_pending_irq (struct lola*,struct lola_stream*) ;

__attribute__((used)) static void lola_stream_start(struct lola *chip, struct lola_stream *str,
         unsigned int tstamp)
{
 lola_stream_clear_pending_irq(chip, str);
 lola_dsd_write(chip, str->dsd, CTL,
         LOLA_DSD_CTL_SRUN |
         LOLA_DSD_CTL_IOCE |
         LOLA_DSD_CTL_DEIE |
         LOLA_DSD_CTL_VLRCV |
         tstamp);
}
