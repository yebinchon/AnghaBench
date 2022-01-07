
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 int RSND_MOD_SSIP ;
 int __rsnd_ssi_is_pin_sharing (struct rsnd_mod*) ;
 int rsnd_dai_connect (int ,struct rsnd_dai_stream*,int ) ;
 struct rsnd_dai* rsnd_io_to_rdai (struct rsnd_dai_stream*) ;
 int rsnd_mod_id (struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 int rsnd_rdai_is_clk_master (struct rsnd_dai*) ;
 int rsnd_ssi_mod_get (struct rsnd_priv*,int) ;

__attribute__((used)) static void rsnd_ssi_parent_attach(struct rsnd_mod *mod,
       struct rsnd_dai_stream *io)
{
 struct rsnd_dai *rdai = rsnd_io_to_rdai(io);
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);

 if (!__rsnd_ssi_is_pin_sharing(mod))
  return;

 if (!rsnd_rdai_is_clk_master(rdai))
  return;

 switch (rsnd_mod_id(mod)) {
 case 1:
 case 2:
 case 9:
  rsnd_dai_connect(rsnd_ssi_mod_get(priv, 0), io, RSND_MOD_SSIP);
  break;
 case 4:
  rsnd_dai_connect(rsnd_ssi_mod_get(priv, 3), io, RSND_MOD_SSIP);
  break;
 case 8:
  rsnd_dai_connect(rsnd_ssi_mod_get(priv, 7), io, RSND_MOD_SSIP);
  break;
 }
}
