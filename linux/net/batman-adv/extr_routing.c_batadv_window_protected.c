
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int dummy; } ;
typedef int s32 ;


 int BATADV_DBG_BATMAN ;
 int BATADV_EXPECTED_SEQNO_RANGE ;
 int BATADV_RESET_PROTECTION_MS ;
 int batadv_dbg (int ,struct batadv_priv*,char*) ;
 int batadv_has_timed_out (unsigned long,int ) ;
 unsigned long jiffies ;

bool batadv_window_protected(struct batadv_priv *bat_priv, s32 seq_num_diff,
        s32 seq_old_max_diff, unsigned long *last_reset,
        bool *protection_started)
{
 if (seq_num_diff <= -seq_old_max_diff ||
     seq_num_diff >= BATADV_EXPECTED_SEQNO_RANGE) {
  if (!batadv_has_timed_out(*last_reset,
       BATADV_RESET_PROTECTION_MS))
   return 1;

  *last_reset = jiffies;
  if (protection_started)
   *protection_started = 1;
  batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
      "old packet received, start protection\n");
 }

 return 0;
}
