
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_audio_codec {int regmap; } ;


 int AUDIO_PORT_IC_CODEC_RX_CTRL ;
 int IC_RX_ENABLE_STEREO ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sirf_audio_codec_rx_disable(struct sirf_audio_codec *sirf_audio_codec)
{
 regmap_update_bits(sirf_audio_codec->regmap,
   AUDIO_PORT_IC_CODEC_RX_CTRL,
   IC_RX_ENABLE_STEREO, ~IC_RX_ENABLE_STEREO);
}
