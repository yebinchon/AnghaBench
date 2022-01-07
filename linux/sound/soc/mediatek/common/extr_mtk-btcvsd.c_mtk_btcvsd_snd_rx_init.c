
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_btcvsd_snd {TYPE_1__* rx; TYPE_1__* rx_packet_buf; } ;
struct TYPE_2__ {int stream; scalar_t__ rw_cnt; scalar_t__ timeout; int buf_size; int packet_size; } ;


 int BTCVSD_RX_BUF_SIZE ;
 int BTCVSD_RX_PACKET_SIZE ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int mtk_btcvsd_snd_rx_init(struct mtk_btcvsd_snd *bt)
{
 memset(bt->rx, 0, sizeof(*bt->rx));
 memset(bt->rx_packet_buf, 0, sizeof(bt->rx_packet_buf));

 bt->rx->packet_size = BTCVSD_RX_PACKET_SIZE;
 bt->rx->buf_size = BTCVSD_RX_BUF_SIZE;
 bt->rx->timeout = 0;
 bt->rx->rw_cnt = 0;
 bt->rx->stream = SNDRV_PCM_STREAM_CAPTURE;
 return 0;
}
