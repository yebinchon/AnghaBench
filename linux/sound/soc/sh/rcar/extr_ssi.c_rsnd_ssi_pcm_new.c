
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_ssi_parent_attach (struct rsnd_mod*,struct rsnd_dai_stream*) ;

__attribute__((used)) static int rsnd_ssi_pcm_new(struct rsnd_mod *mod,
       struct rsnd_dai_stream *io,
       struct snd_soc_pcm_runtime *rtd)
{





 rsnd_ssi_parent_attach(mod, io);

 return 0;
}
