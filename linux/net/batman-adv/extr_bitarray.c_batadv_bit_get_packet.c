
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
typedef scalar_t__ s32 ;


 int BATADV_DBG_BATMAN ;
 scalar_t__ BATADV_EXPECTED_SEQNO_RANGE ;
 scalar_t__ BATADV_TQ_LOCAL_WINDOW_SIZE ;
 int batadv_bitmap_shift_left (unsigned long*,scalar_t__) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,...) ;
 int batadv_set_bit (unsigned long*,scalar_t__) ;
 int bitmap_zero (unsigned long*,scalar_t__) ;

bool batadv_bit_get_packet(void *priv, unsigned long *seq_bits,
      s32 seq_num_diff, int set_mark)
{
 struct batadv_priv *bat_priv = priv;




 if (seq_num_diff <= 0 && seq_num_diff > -BATADV_TQ_LOCAL_WINDOW_SIZE) {
  if (set_mark)
   batadv_set_bit(seq_bits, -seq_num_diff);
  return 0;
 }




 if (seq_num_diff > 0 && seq_num_diff < BATADV_TQ_LOCAL_WINDOW_SIZE) {
  batadv_bitmap_shift_left(seq_bits, seq_num_diff);

  if (set_mark)
   batadv_set_bit(seq_bits, 0);
  return 1;
 }


 if (seq_num_diff >= BATADV_TQ_LOCAL_WINDOW_SIZE &&
     seq_num_diff < BATADV_EXPECTED_SEQNO_RANGE) {
  batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
      "We missed a lot of packets (%i) !\n",
      seq_num_diff - 1);
  bitmap_zero(seq_bits, BATADV_TQ_LOCAL_WINDOW_SIZE);
  if (set_mark)
   batadv_set_bit(seq_bits, 0);
  return 1;
 }
 batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
     "Other host probably restarted!\n");

 bitmap_zero(seq_bits, BATADV_TQ_LOCAL_WINDOW_SIZE);
 if (set_mark)
  batadv_set_bit(seq_bits, 0);

 return 1;
}
