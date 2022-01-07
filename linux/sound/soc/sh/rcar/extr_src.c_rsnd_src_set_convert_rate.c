
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u64 ;
typedef int u32 ;
struct snd_pcm_runtime {int dummy; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int SRC_ADINR ;
 int SRC_BSDSR ;
 int SRC_BSISR ;
 int SRC_BUSIF_DALIGN ;
 int SRC_IFSCR ;
 int SRC_IFSVR ;
 int SRC_I_BUSIF_MODE ;
 int SRC_O_BUSIF_MODE ;
 int SRC_ROUTE_MODE0 ;
 int SRC_SRCCR ;
 int SRC_SRCIR ;
 int* bsdsr_table_pattern1 ;
 int* bsdsr_table_pattern2 ;
 int* bsisr_table ;
 int* chan222222 ;
 int* chan244888 ;
 int* chan288888 ;
 int dev_err (struct device*,char*) ;
 int do_div (int,int) ;
 int rsnd_adg_set_src_timesel_gen2 (struct rsnd_mod*,struct rsnd_dai_stream*,int,int) ;
 int rsnd_get_adinr_bit (struct rsnd_mod*,struct rsnd_dai_stream*) ;
 int rsnd_get_busif_shift (struct rsnd_dai_stream*,struct rsnd_mod*) ;
 int rsnd_get_dalign (struct rsnd_mod*,struct rsnd_dai_stream*) ;
 int rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct snd_pcm_runtime* rsnd_io_to_runtime (struct rsnd_dai_stream*) ;
 scalar_t__ rsnd_is_e3 (struct rsnd_priv*) ;
 int rsnd_mod_id (struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int const) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 int rsnd_runtime_channel_original (struct rsnd_dai_stream*) ;
 int rsnd_src_get_in_rate (struct rsnd_priv*,struct rsnd_dai_stream*) ;
 int rsnd_src_get_out_rate (struct rsnd_priv*,struct rsnd_dai_stream*) ;
 int rsnd_src_sync_is_enabled (struct rsnd_mod*) ;

__attribute__((used)) static void rsnd_src_set_convert_rate(struct rsnd_dai_stream *io,
          struct rsnd_mod *mod)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 struct device *dev = rsnd_priv_to_dev(priv);
 struct snd_pcm_runtime *runtime = rsnd_io_to_runtime(io);
 int is_play = rsnd_io_is_play(io);
 int use_src = 0;
 u32 fin, fout;
 u32 ifscr, fsrate, adinr;
 u32 cr, route;
 u32 i_busif, o_busif, tmp;
 const u32 *bsdsr_table;
 const u32 *chptn;
 uint ratio;
 int chan;
 int idx;

 if (!runtime)
  return;

 fin = rsnd_src_get_in_rate(priv, io);
 fout = rsnd_src_get_out_rate(priv, io);

 chan = rsnd_runtime_channel_original(io);


 if (fin == fout)
  ratio = 0;
 else if (fin > fout)
  ratio = 100 * fin / fout;
 else
  ratio = 100 * fout / fin;

 if (ratio > 600) {
  dev_err(dev, "FSO/FSI ratio error\n");
  return;
 }

 use_src = (fin != fout) | rsnd_src_sync_is_enabled(mod);




 adinr = rsnd_get_adinr_bit(mod, io) | chan;




 ifscr = 0;
 fsrate = 0;
 if (use_src) {
  u64 n;

  ifscr = 1;
  n = (u64)0x0400000 * fin;
  do_div(n, fout);
  fsrate = n;
 }




 cr = 0x00011110;
 route = 0x0;
 if (use_src) {
  route = 0x1;

  if (rsnd_src_sync_is_enabled(mod)) {
   cr |= 0x1;
   route |= rsnd_io_is_play(io) ?
    (0x1 << 24) : (0x1 << 25);
  }
 }
 switch (rsnd_mod_id(mod)) {
 case 0:
  chptn = chan288888;
  bsdsr_table = bsdsr_table_pattern1;
  break;
 case 1:
 case 3:
 case 4:
  chptn = chan244888;
  bsdsr_table = bsdsr_table_pattern1;
  break;
 case 2:
 case 9:
  chptn = chan222222;
  bsdsr_table = bsdsr_table_pattern1;
  break;
 case 5:
 case 6:
 case 7:
 case 8:
  chptn = chan222222;
  bsdsr_table = bsdsr_table_pattern2;
  break;
 default:
  goto convert_rate_err;
 }




 if (rsnd_is_e3(priv))
  switch (rsnd_mod_id(mod)) {
  case 0:
  case 4:
   chptn = chan222222;
  }

 for (idx = 0; idx < ARRAY_SIZE(chan222222); idx++)
  if (chptn[idx] & (1 << chan))
   break;

 if (chan > 8 ||
     idx >= ARRAY_SIZE(chan222222))
  goto convert_rate_err;


 tmp = rsnd_get_busif_shift(io, mod);
 i_busif = ( is_play ? tmp : 0) | 1;
 o_busif = (!is_play ? tmp : 0) | 1;

 rsnd_mod_write(mod, SRC_ROUTE_MODE0, route);

 rsnd_mod_write(mod, SRC_SRCIR, 1);
 rsnd_mod_write(mod, SRC_ADINR, adinr);
 rsnd_mod_write(mod, SRC_IFSCR, ifscr);
 rsnd_mod_write(mod, SRC_IFSVR, fsrate);
 rsnd_mod_write(mod, SRC_SRCCR, cr);
 rsnd_mod_write(mod, SRC_BSDSR, bsdsr_table[idx]);
 rsnd_mod_write(mod, SRC_BSISR, bsisr_table[idx]);
 rsnd_mod_write(mod, SRC_SRCIR, 0);

 rsnd_mod_write(mod, SRC_I_BUSIF_MODE, i_busif);
 rsnd_mod_write(mod, SRC_O_BUSIF_MODE, o_busif);

 rsnd_mod_write(mod, SRC_BUSIF_DALIGN, rsnd_get_dalign(mod, io));

 rsnd_adg_set_src_timesel_gen2(mod, io, fin, fout);

 return;

convert_rate_err:
 dev_err(dev, "unknown BSDSR/BSDIR settings\n");
}
