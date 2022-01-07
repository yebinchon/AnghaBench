
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int lock; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int substream; } ;
struct device {int dummy; } ;


 int DIRQ ;
 int OIRQ ;
 int UIRQ ;
 int rsnd_dai_period_elapsed (struct rsnd_dai_stream*) ;
 int rsnd_dbg_irq_status (struct device*,char*,int ,int) ;
 int rsnd_io_is_working (struct rsnd_dai_stream*) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 int rsnd_ssi_is_dma_mode (struct rsnd_mod*) ;
 int rsnd_ssi_pio_interrupt (struct rsnd_mod*,struct rsnd_dai_stream*) ;
 int rsnd_ssi_status_clear (struct rsnd_mod*) ;
 int rsnd_ssi_status_get (struct rsnd_mod*) ;
 int snd_pcm_stop_xrun (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __rsnd_ssi_interrupt(struct rsnd_mod *mod,
     struct rsnd_dai_stream *io)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 struct device *dev = rsnd_priv_to_dev(priv);
 int is_dma = rsnd_ssi_is_dma_mode(mod);
 u32 status;
 bool elapsed = 0;
 bool stop = 0;

 spin_lock(&priv->lock);


 if (!rsnd_io_is_working(io))
  goto rsnd_ssi_interrupt_out;

 status = rsnd_ssi_status_get(mod);


 if (!is_dma && (status & DIRQ))
  elapsed = rsnd_ssi_pio_interrupt(mod, io);


 if (is_dma && (status & (UIRQ | OIRQ))) {
  rsnd_dbg_irq_status(dev, "%s err status : 0x%08x\n",
   rsnd_mod_name(mod), status);

  stop = 1;
 }

 rsnd_ssi_status_clear(mod);
rsnd_ssi_interrupt_out:
 spin_unlock(&priv->lock);

 if (elapsed)
  rsnd_dai_period_elapsed(io);

 if (stop)
  snd_pcm_stop_xrun(io->substream);

}
