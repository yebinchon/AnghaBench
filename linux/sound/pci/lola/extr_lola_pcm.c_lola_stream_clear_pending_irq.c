
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola_stream {int dsd; } ;
struct lola {int dummy; } ;


 unsigned int LOLA_DSD_STS_BCIS ;
 unsigned int LOLA_DSD_STS_DESE ;
 int STS ;
 unsigned int lola_dsd_read (struct lola*,int ,int ) ;
 int lola_dsd_write (struct lola*,int ,int ,unsigned int) ;

__attribute__((used)) static void lola_stream_clear_pending_irq(struct lola *chip,
       struct lola_stream *str)
{
 unsigned int val = lola_dsd_read(chip, str->dsd, STS);
 val &= LOLA_DSD_STS_DESE | LOLA_DSD_STS_BCIS;
 if (val)
  lola_dsd_write(chip, str->dsd, STS, val);
}
