
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_runtime {int periods; int format; scalar_t__ dma_area; } ;
struct rsnd_ssi {int byte_pos; int next_period_byte; int byte_per_period; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int SSIRDR ;
 int SSITDR ;
 int WRITE_ONCE (int,int) ;
 scalar_t__ rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct snd_pcm_runtime* rsnd_io_to_runtime (struct rsnd_dai_stream*) ;
 int rsnd_mod_read (struct rsnd_mod*,int ) ;
 struct rsnd_ssi* rsnd_mod_to_ssi (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;
 int snd_pcm_format_width (int ) ;

__attribute__((used)) static bool rsnd_ssi_pio_interrupt(struct rsnd_mod *mod,
       struct rsnd_dai_stream *io)
{
 struct snd_pcm_runtime *runtime = rsnd_io_to_runtime(io);
 struct rsnd_ssi *ssi = rsnd_mod_to_ssi(mod);
 u32 *buf = (u32 *)(runtime->dma_area + ssi->byte_pos);
 int shift = 0;
 int byte_pos;
 bool elapsed = 0;

 if (snd_pcm_format_width(runtime->format) == 24)
  shift = 8;






 if (rsnd_io_is_play(io))
  rsnd_mod_write(mod, SSITDR, (*buf) << shift);
 else
  *buf = (rsnd_mod_read(mod, SSIRDR) >> shift);

 byte_pos = ssi->byte_pos + sizeof(*buf);

 if (byte_pos >= ssi->next_period_byte) {
  int period_pos = byte_pos / ssi->byte_per_period;

  if (period_pos >= runtime->periods) {
   byte_pos = 0;
   period_pos = 0;
  }

  ssi->next_period_byte = (period_pos + 1) * ssi->byte_per_period;

  elapsed = 1;
 }

 WRITE_ONCE(ssi->byte_pos, byte_pos);

 return elapsed;
}
