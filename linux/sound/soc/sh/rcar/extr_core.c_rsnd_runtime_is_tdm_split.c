
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_dai_stream {int dummy; } ;


 int RSND_STREAM_TDM_SPLIT ;
 int rsnd_flags_has (struct rsnd_dai_stream*,int ) ;

int rsnd_runtime_is_tdm_split(struct rsnd_dai_stream *io)
{
 return !!rsnd_flags_has(io, RSND_STREAM_TDM_SPLIT);
}
