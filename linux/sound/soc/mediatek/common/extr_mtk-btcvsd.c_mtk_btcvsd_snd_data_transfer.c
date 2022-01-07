
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef enum bt_sco_direct { ____Placeholder_bt_sco_direct } bt_sco_direct ;


 int BT_SCO_DIRECT_BT2ARM ;

__attribute__((used)) static void mtk_btcvsd_snd_data_transfer(enum bt_sco_direct dir,
      u8 *src, u8 *dst,
      unsigned int blk_size,
      unsigned int blk_num)
{
 unsigned int i, j;

 if (blk_size == 60 || blk_size == 120 || blk_size == 20) {
  u32 *src_32 = (u32 *)src;
  u32 *dst_32 = (u32 *)dst;

  for (i = 0; i < (blk_size * blk_num / 4); i++)
   *dst_32++ = *src_32++;
 } else {
  u16 *src_16 = (u16 *)src;
  u16 *dst_16 = (u16 *)dst;

  for (j = 0; j < blk_num; j++) {
   for (i = 0; i < (blk_size / 2); i++)
    *dst_16++ = *src_16++;

   if (dir == BT_SCO_DIRECT_BT2ARM)
    src_16++;
   else
    dst_16++;
  }
 }
}
