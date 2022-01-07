
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ val; } ;
struct rsnd_src {TYPE_1__ sync; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_mod_power_on (struct rsnd_mod*) ;
 struct rsnd_src* rsnd_mod_to_src (struct rsnd_mod*) ;
 int rsnd_src_activation (struct rsnd_mod*) ;
 int rsnd_src_set_convert_rate (struct rsnd_dai_stream*,struct rsnd_mod*) ;
 int rsnd_src_status_clear (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_src_init(struct rsnd_mod *mod,
    struct rsnd_dai_stream *io,
    struct rsnd_priv *priv)
{
 struct rsnd_src *src = rsnd_mod_to_src(mod);


 src->sync.val = 0;

 rsnd_mod_power_on(mod);

 rsnd_src_activation(mod);

 rsnd_src_set_convert_rate(io, mod);

 rsnd_src_status_clear(mod);

 return 0;
}
