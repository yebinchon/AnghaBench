
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_btcvsd_snd_time_buffer_info {int data_count_equi_time; int time_stamp_us; } ;
struct mtk_btcvsd_snd {TYPE_1__* tx; } ;
struct TYPE_2__ {int buf_data_equivalent_time; int time_stamp; } ;



__attribute__((used)) static void get_tx_time_stamp(struct mtk_btcvsd_snd *bt,
         struct mtk_btcvsd_snd_time_buffer_info *ts)
{
 ts->time_stamp_us = bt->tx->time_stamp;
 ts->data_count_equi_time = bt->tx->buf_data_equivalent_time;
}
