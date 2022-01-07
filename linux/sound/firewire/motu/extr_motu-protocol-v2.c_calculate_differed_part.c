
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_motu_packet_format {unsigned char* differed_part_pcm_chunks; } ;
typedef enum snd_motu_spec_flags { ____Placeholder_snd_motu_spec_flags } snd_motu_spec_flags ;


 int SND_MOTU_SPEC_HAS_OPT_IFACE_A ;
 int SND_MOTU_SPEC_HAS_OPT_IFACE_B ;
 int V2_OPT_IFACE_MODE_ADAT ;

__attribute__((used)) static void calculate_differed_part(struct snd_motu_packet_format *formats,
        enum snd_motu_spec_flags flags,
        u32 data, u32 mask, u32 shift)
{
 unsigned char pcm_chunks[2] = {0, 0};






 data = (data & mask) >> shift;
 if (data == V2_OPT_IFACE_MODE_ADAT) {
  if (flags & SND_MOTU_SPEC_HAS_OPT_IFACE_A) {
   pcm_chunks[0] += 8;
   pcm_chunks[1] += 4;
  }


  if (flags & SND_MOTU_SPEC_HAS_OPT_IFACE_B) {
   pcm_chunks[1] += 4;
  }
 }


 formats->differed_part_pcm_chunks[0] = pcm_chunks[0];
 formats->differed_part_pcm_chunks[1] = pcm_chunks[1];
}
