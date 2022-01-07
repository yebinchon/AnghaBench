
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssi {int irq; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int IRQF_SHARED ;
 int RSND_SSI_PROBED ;
 int dev_name (struct device*) ;
 int request_irq (int ,int ,int ,int ,struct rsnd_mod*) ;
 int rsnd_flags_has (struct rsnd_ssi*,int ) ;
 int rsnd_flags_set (struct rsnd_ssi*,int ) ;
 struct rsnd_ssi* rsnd_mod_to_ssi (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 int rsnd_ssi_interrupt ;
 scalar_t__ rsnd_ssi_is_multi_slave (struct rsnd_mod*,struct rsnd_dai_stream*) ;

__attribute__((used)) static int rsnd_ssi_common_probe(struct rsnd_mod *mod,
     struct rsnd_dai_stream *io,
     struct rsnd_priv *priv)
{
 struct device *dev = rsnd_priv_to_dev(priv);
 struct rsnd_ssi *ssi = rsnd_mod_to_ssi(mod);
 int ret = 0;





 if (rsnd_ssi_is_multi_slave(mod, io))
  return 0;
 if (!rsnd_flags_has(ssi, RSND_SSI_PROBED)) {
  ret = request_irq(ssi->irq,
      rsnd_ssi_interrupt,
      IRQF_SHARED,
      dev_name(dev), mod);

  rsnd_flags_set(ssi, RSND_SSI_PROBED);
 }

 return ret;
}
