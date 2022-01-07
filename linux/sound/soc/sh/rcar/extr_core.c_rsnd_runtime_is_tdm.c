
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_dai_stream {int dummy; } ;


 int rsnd_runtime_channel_for_ssi (struct rsnd_dai_stream*) ;

int rsnd_runtime_is_tdm(struct rsnd_dai_stream *io)
{
 return rsnd_runtime_channel_for_ssi(io) >= 6;
}
