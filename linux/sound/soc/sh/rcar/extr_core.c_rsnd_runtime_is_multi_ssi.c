
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 scalar_t__ rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct rsnd_dai* rsnd_io_to_rdai (struct rsnd_dai_stream*) ;
 int rsnd_rdai_ssi_lane_get (struct rsnd_dai*) ;
 int rsnd_runtime_channel_after_ctu (struct rsnd_dai_stream*) ;
 int rsnd_runtime_channel_original (struct rsnd_dai_stream*) ;

int rsnd_runtime_is_multi_ssi(struct rsnd_dai_stream *io)
{
 struct rsnd_dai *rdai = rsnd_io_to_rdai(io);
 int lane = rsnd_rdai_ssi_lane_get(rdai);
 int chan = rsnd_io_is_play(io) ?
  rsnd_runtime_channel_after_ctu(io) :
  rsnd_runtime_channel_original(io);

 return (chan > 2) && (lane > 1);
}
