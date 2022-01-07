
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device_node {int dummy; } ;


 int rsnd_io_to_mod_ssi (struct rsnd_dai_stream*) ;
 int rsnd_parse_tdm_split_mode (struct rsnd_priv*,struct rsnd_dai_stream*,struct device_node*) ;

__attribute__((used)) static void rsnd_parse_connect_simple(struct rsnd_priv *priv,
          struct rsnd_dai_stream *io,
          struct device_node *dai_np)
{
 if (!rsnd_io_to_mod_ssi(io))
  return;

 rsnd_parse_tdm_split_mode(priv, io, dai_np);
}
