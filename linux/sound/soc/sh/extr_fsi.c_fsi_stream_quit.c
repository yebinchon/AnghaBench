
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct fsi_stream {int uerr_num; int oerr_num; scalar_t__ bus_option; scalar_t__ sample_width; scalar_t__ period_pos; scalar_t__ period_samples; scalar_t__ buff_sample_pos; scalar_t__ buff_sample_capa; int * substream; } ;
struct fsi_priv {int dummy; } ;
struct fsi_master {int lock; } ;


 int dev_err (int ,char*,int ) ;
 struct snd_soc_dai* fsi_get_dai (int *) ;
 struct fsi_master* fsi_get_master (struct fsi_priv*) ;
 int fsi_stream_handler_call (struct fsi_stream*,int ,struct fsi_priv*,struct fsi_stream*) ;
 int quit ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fsi_stream_quit(struct fsi_priv *fsi, struct fsi_stream *io)
{
 struct snd_soc_dai *dai = fsi_get_dai(io->substream);
 struct fsi_master *master = fsi_get_master(fsi);
 unsigned long flags;

 spin_lock_irqsave(&master->lock, flags);

 if (io->oerr_num > 0)
  dev_err(dai->dev, "over_run = %d\n", io->oerr_num);

 if (io->uerr_num > 0)
  dev_err(dai->dev, "under_run = %d\n", io->uerr_num);

 fsi_stream_handler_call(io, quit, fsi, io);
 io->substream = ((void*)0);
 io->buff_sample_capa = 0;
 io->buff_sample_pos = 0;
 io->period_samples = 0;
 io->period_pos = 0;
 io->sample_width = 0;
 io->bus_option = 0;
 io->oerr_num = 0;
 io->uerr_num = 0;
 spin_unlock_irqrestore(&master->lock, flags);
}
