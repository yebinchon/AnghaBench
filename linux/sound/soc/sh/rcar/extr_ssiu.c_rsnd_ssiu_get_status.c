
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_ssiu {int * busif_status; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
typedef enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;


 int rsnd_mod_id_sub (struct rsnd_mod*) ;
 struct rsnd_ssiu* rsnd_mod_to_ssiu (struct rsnd_mod*) ;

__attribute__((used)) static u32 *rsnd_ssiu_get_status(struct rsnd_mod *mod,
     struct rsnd_dai_stream *io,
     enum rsnd_mod_type type)
{
 struct rsnd_ssiu *ssiu = rsnd_mod_to_ssiu(mod);
 int busif = rsnd_mod_id_sub(mod);

 return &ssiu->busif_status[busif];
}
