
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_mod {int status; } ;
struct rsnd_dai_stream {int dummy; } ;
typedef enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;



u32 *rsnd_mod_get_status(struct rsnd_mod *mod,
    struct rsnd_dai_stream *io,
    enum rsnd_mod_type type)
{
 return &mod->status;
}
