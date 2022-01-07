
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_audio_codec {int regmap; } ;


 int AUDIO_PORT_IC_CODEC_TX_CTRL ;
 int AUDIO_PORT_IC_TXFIFO_OP ;
 int IC_TX_ENABLE ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void sirf_audio_codec_tx_disable(struct sirf_audio_codec *sirf_audio_codec)
{
 regmap_write(sirf_audio_codec->regmap, AUDIO_PORT_IC_TXFIFO_OP, 0);
 regmap_update_bits(sirf_audio_codec->regmap,
  AUDIO_PORT_IC_CODEC_TX_CTRL, IC_TX_ENABLE, ~IC_TX_ENABLE);
}
