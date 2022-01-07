
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_mcasp {int num_serializer; scalar_t__* serial_dir; } ;


 scalar_t__ RX_MODE ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ TX_MODE ;
 int davinci_mcasp_ch_constraint (struct davinci_mcasp*,int ,int) ;

__attribute__((used)) static int davinci_mcasp_set_ch_constraints(struct davinci_mcasp *mcasp)
{
 int rx_serializers = 0, tx_serializers = 0, ret, i;

 for (i = 0; i < mcasp->num_serializer; i++)
  if (mcasp->serial_dir[i] == TX_MODE)
   tx_serializers++;
  else if (mcasp->serial_dir[i] == RX_MODE)
   rx_serializers++;

 ret = davinci_mcasp_ch_constraint(mcasp, SNDRV_PCM_STREAM_PLAYBACK,
       tx_serializers);
 if (ret)
  return ret;

 ret = davinci_mcasp_ch_constraint(mcasp, SNDRV_PCM_STREAM_CAPTURE,
       rx_serializers);

 return ret;
}
