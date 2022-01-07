
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i2s_stream_instance {scalar_t__ acp3x_base; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ mmACP_BT_RX_LINEARPOSITIONCNTR_HIGH ;
 scalar_t__ mmACP_BT_RX_LINEARPOSITIONCNTR_LOW ;
 scalar_t__ mmACP_BT_TX_LINEARPOSITIONCNTR_HIGH ;
 scalar_t__ mmACP_BT_TX_LINEARPOSITIONCNTR_LOW ;
 int rv_readl (scalar_t__) ;

__attribute__((used)) static u64 acp_get_byte_count(struct i2s_stream_instance *rtd, int direction)
{
 u64 byte_count;

 if (direction == SNDRV_PCM_STREAM_PLAYBACK) {
  byte_count = rv_readl(rtd->acp3x_base +
          mmACP_BT_TX_LINEARPOSITIONCNTR_HIGH);
  byte_count |= rv_readl(rtd->acp3x_base +
           mmACP_BT_TX_LINEARPOSITIONCNTR_LOW);
 } else {
  byte_count = rv_readl(rtd->acp3x_base +
          mmACP_BT_RX_LINEARPOSITIONCNTR_HIGH);
  byte_count |= rv_readl(rtd->acp3x_base +
           mmACP_BT_RX_LINEARPOSITIONCNTR_LOW);
 }
 return byte_count;
}
