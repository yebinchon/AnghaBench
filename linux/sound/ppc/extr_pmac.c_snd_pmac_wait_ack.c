
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmac_stream {TYPE_1__* dma; } ;
struct TYPE_2__ {int status; } ;


 int RUN ;
 int in_le32 (int *) ;
 int udelay (int) ;

__attribute__((used)) static inline void
snd_pmac_wait_ack(struct pmac_stream *rec)
{
 int timeout = 50000;
 while ((in_le32(&rec->dma->status) & RUN) && timeout-- > 0)
  udelay(1);
}
