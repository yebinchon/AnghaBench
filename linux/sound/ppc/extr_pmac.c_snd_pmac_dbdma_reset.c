
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dma; } ;
struct snd_pmac {TYPE_2__ capture; TYPE_2__ playback; } ;
struct TYPE_3__ {int control; } ;


 int DEAD ;
 int FLUSH ;
 int PAUSE ;
 int RUN ;
 int WAKE ;
 int out_le32 (int *,int) ;
 int snd_pmac_wait_ack (TYPE_2__*) ;

__attribute__((used)) static void snd_pmac_dbdma_reset(struct snd_pmac *chip)
{
 out_le32(&chip->playback.dma->control, (RUN|PAUSE|FLUSH|WAKE|DEAD) << 16);
 snd_pmac_wait_ack(&chip->playback);
 out_le32(&chip->capture.dma->control, (RUN|PAUSE|FLUSH|WAKE|DEAD) << 16);
 snd_pmac_wait_ack(&chip->capture);
}
