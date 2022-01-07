
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct mchp_i2s_mcc_dev {int tx_rdy; int rx_rdy; int capture; int playback; int wq_rxrdy; int wq_txrdy; } ;


 int init_waitqueue_head (int *) ;
 struct mchp_i2s_mcc_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int mchp_i2s_mcc_dai_probe(struct snd_soc_dai *dai)
{
 struct mchp_i2s_mcc_dev *dev = snd_soc_dai_get_drvdata(dai);

 init_waitqueue_head(&dev->wq_txrdy);
 init_waitqueue_head(&dev->wq_rxrdy);
 dev->tx_rdy = 1;
 dev->rx_rdy = 1;

 snd_soc_dai_init_dma_data(dai, &dev->playback, &dev->capture);

 return 0;
}
