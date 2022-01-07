
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssiu {scalar_t__ usrcnt; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int SSI_CONTROL ;
 int SSI_CTRL ;
 int rsnd_mod_bset (struct rsnd_mod*,int ,int,int ) ;
 int rsnd_mod_id_sub (struct rsnd_mod*) ;
 struct rsnd_ssiu* rsnd_mod_to_ssiu (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int ) ;
 scalar_t__ rsnd_ssi_multi_slaves_runtime (struct rsnd_dai_stream*) ;
 int rsnd_ssi_use_busif (struct rsnd_dai_stream*) ;

__attribute__((used)) static int rsnd_ssiu_stop_gen2(struct rsnd_mod *mod,
          struct rsnd_dai_stream *io,
          struct rsnd_priv *priv)
{
 struct rsnd_ssiu *ssiu = rsnd_mod_to_ssiu(mod);
 int busif = rsnd_mod_id_sub(mod);

 if (!rsnd_ssi_use_busif(io))
  return 0;

 rsnd_mod_bset(mod, SSI_CTRL, 1 << (busif * 4), 0);

 if (--ssiu->usrcnt)
  return 0;

 if (rsnd_ssi_multi_slaves_runtime(io))
  rsnd_mod_write(mod, SSI_CONTROL, 0);

 return 0;
}
