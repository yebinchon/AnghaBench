
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef size_t u16 ;
struct snd_card_asihpi {int out_max_chans; int h_mixer; } ;
struct hpi_format {int dummy; } ;


 int HPI_CONTROL_SAMPLECLOCK ;
 size_t HPI_FORMAT_PCM24_SIGNED ;
 size_t HPI_FORMAT_PCM8_UNSIGNED ;
 int HPI_SOURCENODE_CLOCK_SOURCE ;
 scalar_t__ INVALID_FORMAT ;
 size_t hpi_format_create (struct hpi_format*,int ,size_t,int,int,int ) ;
 size_t hpi_mixer_get_control (int ,int ,int ,int ,int ,int ,int*) ;
 size_t hpi_outstream_query_format (int,struct hpi_format*) ;
 size_t hpi_sample_clock_get_sample_rate (int,int*) ;
 scalar_t__* hpi_to_alsa_formats ;
 int pcm_format_to_bits (scalar_t__) ;

__attribute__((used)) static u64 snd_card_asihpi_playback_formats(struct snd_card_asihpi *asihpi,
      u32 h_stream)
{
 struct hpi_format hpi_format;
 u16 format;
 u16 err;
 u32 h_control;
 u32 sample_rate = 48000;
 u64 formats = 0;




 err = hpi_mixer_get_control(asihpi->h_mixer,
      HPI_SOURCENODE_CLOCK_SOURCE, 0, 0, 0,
      HPI_CONTROL_SAMPLECLOCK, &h_control);

 if (!err)
  err = hpi_sample_clock_get_sample_rate(h_control,
    &sample_rate);

 for (format = HPI_FORMAT_PCM8_UNSIGNED;
      format <= HPI_FORMAT_PCM24_SIGNED; format++) {
  err = hpi_format_create(&hpi_format, asihpi->out_max_chans,
     format, sample_rate, 128000, 0);
  if (!err)
   err = hpi_outstream_query_format(h_stream, &hpi_format);
  if (!err && (hpi_to_alsa_formats[format] != INVALID_FORMAT))
   formats |= pcm_format_to_bits(hpi_to_alsa_formats[format]);
 }
 return formats;
}
