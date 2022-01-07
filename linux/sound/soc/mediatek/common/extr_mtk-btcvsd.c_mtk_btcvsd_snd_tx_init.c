
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_btcvsd_snd {TYPE_1__* tx; TYPE_1__* tx_packet_buf; } ;
struct TYPE_2__ {int stream; scalar_t__ rw_cnt; scalar_t__ timeout; int buf_size; int packet_size; } ;


 int BTCVSD_TX_BUF_SIZE ;
 int BTCVSD_TX_PACKET_SIZE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int mtk_btcvsd_snd_tx_init(struct mtk_btcvsd_snd *bt)
{
 memset(bt->tx, 0, sizeof(*bt->tx));
 memset(bt->tx_packet_buf, 0, sizeof(bt->tx_packet_buf));

 bt->tx->packet_size = BTCVSD_TX_PACKET_SIZE;
 bt->tx->buf_size = BTCVSD_TX_BUF_SIZE;
 bt->tx->timeout = 0;
 bt->tx->rw_cnt = 0;
 bt->tx->stream = SNDRV_PCM_STREAM_PLAYBACK;
 return 0;
}
