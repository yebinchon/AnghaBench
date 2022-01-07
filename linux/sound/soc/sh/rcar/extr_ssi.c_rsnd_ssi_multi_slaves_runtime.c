
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_dai_stream {int dummy; } ;


 scalar_t__ rsnd_runtime_is_multi_ssi (struct rsnd_dai_stream*) ;
 int rsnd_ssi_multi_slaves (struct rsnd_dai_stream*) ;

u32 rsnd_ssi_multi_slaves_runtime(struct rsnd_dai_stream *io)
{
 if (rsnd_runtime_is_multi_ssi(io))
  return rsnd_ssi_multi_slaves(io);

 return 0;
}
