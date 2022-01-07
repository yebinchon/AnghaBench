
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int ** mod; } ;
typedef enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;



__attribute__((used)) static void rsnd_dai_disconnect(struct rsnd_mod *mod,
    struct rsnd_dai_stream *io,
    enum rsnd_mod_type type)
{
 io->mod[type] = ((void*)0);
}
