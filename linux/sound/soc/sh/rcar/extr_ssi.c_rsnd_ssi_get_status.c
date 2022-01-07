
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int parent_ssi_status; } ;
typedef enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;


 int RSND_MOD_SSIP ;
 int * rsnd_mod_get_status (struct rsnd_mod*,struct rsnd_dai_stream*,int) ;

__attribute__((used)) static u32 *rsnd_ssi_get_status(struct rsnd_mod *mod,
    struct rsnd_dai_stream *io,
    enum rsnd_mod_type type)
{
 if (type == RSND_MOD_SSIP)
  return &io->parent_ssi_status;

 return rsnd_mod_get_status(mod, io, type);
}
