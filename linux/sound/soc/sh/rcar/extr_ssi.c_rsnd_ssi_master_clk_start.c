
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssi {scalar_t__ usrcnt; unsigned int rate; int chan; int cr_clk; int wsr; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;
struct device {int dummy; } ;


 int CKDV (int) ;
 int CONT ;
 int EINVAL ;
 int EIO ;
 int FORCE ;
 int SCKD ;
 int SWSD ;
 int dev_dbg (struct device*,char*,int ,int,unsigned int) ;
 int dev_err (struct device*,char*) ;
 int rsnd_adg_ssi_clk_try_start (struct rsnd_mod*,unsigned int) ;
 int rsnd_channel_normalization (int) ;
 int rsnd_io_converted_chan (struct rsnd_dai_stream*) ;
 scalar_t__ rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct rsnd_priv* rsnd_io_to_priv (struct rsnd_dai_stream*) ;
 struct rsnd_dai* rsnd_io_to_rdai (struct rsnd_dai_stream*) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 struct rsnd_ssi* rsnd_mod_to_ssi (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 int rsnd_rdai_is_clk_master (struct rsnd_dai*) ;
 int rsnd_rdai_width_to_swl (struct rsnd_dai*) ;
 int rsnd_runtime_channel_for_ssi (struct rsnd_dai_stream*) ;
 scalar_t__ rsnd_runtime_is_tdm_split (struct rsnd_dai_stream*) ;
 unsigned int rsnd_src_get_in_rate (struct rsnd_priv*,struct rsnd_dai_stream*) ;
 unsigned int rsnd_src_get_out_rate (struct rsnd_priv*,struct rsnd_dai_stream*) ;
 int rsnd_ssi_can_output_clk (struct rsnd_mod*) ;
 unsigned int rsnd_ssi_clk_query (struct rsnd_dai*,unsigned int,int,int*) ;
 scalar_t__ rsnd_ssi_is_multi_slave (struct rsnd_mod*,struct rsnd_dai_stream*) ;

__attribute__((used)) static int rsnd_ssi_master_clk_start(struct rsnd_mod *mod,
         struct rsnd_dai_stream *io)
{
 struct rsnd_priv *priv = rsnd_io_to_priv(io);
 struct device *dev = rsnd_priv_to_dev(priv);
 struct rsnd_dai *rdai = rsnd_io_to_rdai(io);
 struct rsnd_ssi *ssi = rsnd_mod_to_ssi(mod);
 int chan = rsnd_runtime_channel_for_ssi(io);
 int idx, ret;
 unsigned int main_rate;
 unsigned int rate = rsnd_io_is_play(io) ?
  rsnd_src_get_out_rate(priv, io) :
  rsnd_src_get_in_rate(priv, io);

 if (!rsnd_rdai_is_clk_master(rdai))
  return 0;

 if (!rsnd_ssi_can_output_clk(mod))
  return 0;

 if (rsnd_ssi_is_multi_slave(mod, io))
  return 0;

 if (rsnd_runtime_is_tdm_split(io))
  chan = rsnd_io_converted_chan(io);

 chan = rsnd_channel_normalization(chan);

 if (ssi->usrcnt > 0) {
  if (ssi->rate != rate) {
   dev_err(dev, "SSI parent/child should use same rate\n");
   return -EINVAL;
  }

  if (ssi->chan != chan) {
   dev_err(dev, "SSI parent/child should use same chan\n");
   return -EINVAL;
  }

  return 0;
 }

 main_rate = rsnd_ssi_clk_query(rdai, rate, chan, &idx);
 if (!main_rate) {
  dev_err(dev, "unsupported clock rate\n");
  return -EIO;
 }

 ret = rsnd_adg_ssi_clk_try_start(mod, main_rate);
 if (ret < 0)
  return ret;
 ssi->cr_clk = FORCE | rsnd_rdai_width_to_swl(rdai) |
   SCKD | SWSD | CKDV(idx);
 ssi->wsr = CONT;
 ssi->rate = rate;
 ssi->chan = chan;

 dev_dbg(dev, "%s outputs %d chan %u Hz\n",
  rsnd_mod_name(mod), chan, rate);

 return 0;
}
