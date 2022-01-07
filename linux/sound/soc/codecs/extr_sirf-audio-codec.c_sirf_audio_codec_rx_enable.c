
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_audio_codec {int regmap; } ;


 int AUDIO_FIFO_RESET ;
 int AUDIO_FIFO_START ;
 int AUDIO_PORT_IC_CODEC_RX_CTRL ;
 int AUDIO_PORT_IC_RXFIFO_INT_MSK ;
 int AUDIO_PORT_IC_RXFIFO_OP ;
 int IC_RX_ENABLE_MONO ;
 int IC_RX_ENABLE_STEREO ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void sirf_audio_codec_rx_enable(struct sirf_audio_codec *sirf_audio_codec,
 int channels)
{
 regmap_update_bits(sirf_audio_codec->regmap, AUDIO_PORT_IC_RXFIFO_OP,
  AUDIO_FIFO_RESET, AUDIO_FIFO_RESET);
 regmap_update_bits(sirf_audio_codec->regmap, AUDIO_PORT_IC_RXFIFO_OP,
  AUDIO_FIFO_RESET, ~AUDIO_FIFO_RESET);
 regmap_write(sirf_audio_codec->regmap,
  AUDIO_PORT_IC_RXFIFO_INT_MSK, 0);
 regmap_write(sirf_audio_codec->regmap, AUDIO_PORT_IC_RXFIFO_OP, 0);
 regmap_update_bits(sirf_audio_codec->regmap, AUDIO_PORT_IC_RXFIFO_OP,
  AUDIO_FIFO_START, AUDIO_FIFO_START);
 if (channels == 1)
  regmap_update_bits(sirf_audio_codec->regmap,
   AUDIO_PORT_IC_CODEC_RX_CTRL,
   IC_RX_ENABLE_MONO, IC_RX_ENABLE_MONO);
 else
  regmap_update_bits(sirf_audio_codec->regmap,
   AUDIO_PORT_IC_CODEC_RX_CTRL,
   IC_RX_ENABLE_STEREO, IC_RX_ENABLE_STEREO);
}
