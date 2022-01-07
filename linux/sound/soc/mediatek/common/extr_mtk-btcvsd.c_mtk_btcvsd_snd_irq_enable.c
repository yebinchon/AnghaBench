
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_btcvsd_snd {int conn_bt_cvsd_mask; int infra_misc_offset; int infra; } ;


 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void mtk_btcvsd_snd_irq_enable(struct mtk_btcvsd_snd *bt)
{
 regmap_update_bits(bt->infra, bt->infra_misc_offset,
      bt->conn_bt_cvsd_mask, 0);
}
