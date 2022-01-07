
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_module_fmt {int interleaving_style; int ch_map; int sample_type; int ch_cfg; int valid_bit_depth; int bit_depth; int s_freq; int channels; } ;
struct skl_audio_data_format {int interleaving; int channel_map; int sample_type; int ch_cfg; int valid_bit_depth; int bit_depth; int s_freq; int number_of_channels; } ;



__attribute__((used)) static void fill_pin_params(struct skl_audio_data_format *pin_fmt,
    struct skl_module_fmt *format)
{
 pin_fmt->number_of_channels = format->channels;
 pin_fmt->s_freq = format->s_freq;
 pin_fmt->bit_depth = format->bit_depth;
 pin_fmt->valid_bit_depth = format->valid_bit_depth;
 pin_fmt->ch_cfg = format->ch_cfg;
 pin_fmt->sample_type = format->sample_type;
 pin_fmt->channel_map = format->ch_map;
 pin_fmt->interleaving = format->interleaving_style;
}
