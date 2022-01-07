
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int capture; int playback; } ;
struct fsi_master {TYPE_1__ fsib; TYPE_1__ fsia; } ;
typedef int irqreturn_t ;


 int AB_IO (int,int ) ;
 int AI_SHIFT ;
 int AO_SHIFT ;
 int BI_SHIFT ;
 int BO_SHIFT ;
 int IR ;
 int IRQ_HANDLED ;
 int SOFT_RST ;
 int fsi_count_fifo_err (TYPE_1__*) ;
 int fsi_irq_clear_status (TYPE_1__*) ;
 int fsi_irq_get_status (struct fsi_master*) ;
 int fsi_master_mask_set (struct fsi_master*,int ,int ,int ) ;
 int fsi_stream_transfer (int *) ;

__attribute__((used)) static irqreturn_t fsi_interrupt(int irq, void *data)
{
 struct fsi_master *master = data;
 u32 int_st = fsi_irq_get_status(master);


 fsi_master_mask_set(master, SOFT_RST, IR, 0);
 fsi_master_mask_set(master, SOFT_RST, IR, IR);

 if (int_st & AB_IO(1, AO_SHIFT))
  fsi_stream_transfer(&master->fsia.playback);
 if (int_st & AB_IO(1, BO_SHIFT))
  fsi_stream_transfer(&master->fsib.playback);
 if (int_st & AB_IO(1, AI_SHIFT))
  fsi_stream_transfer(&master->fsia.capture);
 if (int_st & AB_IO(1, BI_SHIFT))
  fsi_stream_transfer(&master->fsib.capture);

 fsi_count_fifo_err(&master->fsia);
 fsi_count_fifo_err(&master->fsib);

 fsi_irq_clear_status(&master->fsia);
 fsi_irq_clear_status(&master->fsib);

 return IRQ_HANDLED;
}
