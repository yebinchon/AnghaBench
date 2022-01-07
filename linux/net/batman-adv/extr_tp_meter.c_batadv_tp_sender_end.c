
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct batadv_tp_vars {int srtt; int rttvar; int tot_sent; int start_time; int other_end; int reason; int icmp_uid; int session; int ss_threshold; int cwnd; int rto; } ;
struct batadv_priv {int dummy; } ;


 int BATADV_DBG_TP_METER ;
 int atomic64_read (int *) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int,int,...) ;
 int batadv_tp_batctl_notify (int ,int ,struct batadv_priv*,int ,int ,int ) ;
 int batadv_tp_session_cookie (int ,int ) ;

__attribute__((used)) static void batadv_tp_sender_end(struct batadv_priv *bat_priv,
     struct batadv_tp_vars *tp_vars)
{
 u32 session_cookie;

 batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
     "Test towards %pM finished..shutting down (reason=%d)\n",
     tp_vars->other_end, tp_vars->reason);

 batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
     "Last timing stats: SRTT=%ums RTTVAR=%ums RTO=%ums\n",
     tp_vars->srtt >> 3, tp_vars->rttvar >> 2, tp_vars->rto);

 batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
     "Final values: cwnd=%u ss_threshold=%u\n",
     tp_vars->cwnd, tp_vars->ss_threshold);

 session_cookie = batadv_tp_session_cookie(tp_vars->session,
        tp_vars->icmp_uid);

 batadv_tp_batctl_notify(tp_vars->reason,
    tp_vars->other_end,
    bat_priv,
    tp_vars->start_time,
    atomic64_read(&tp_vars->tot_sent),
    session_cookie);
}
