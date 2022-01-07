
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_dai_period_elapsed (struct rsnd_dai_stream*) ;
 scalar_t__ rsnd_io_is_working (struct rsnd_dai_stream*) ;

__attribute__((used)) static void __rsnd_dmaen_complete(struct rsnd_mod *mod,
      struct rsnd_dai_stream *io)
{
 if (rsnd_io_is_working(io))
  rsnd_dai_period_elapsed(io);
}
