#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct batadv_tp_vars {int srtt; int rttvar; int /*<<< orphan*/  tot_sent; int /*<<< orphan*/  start_time; int /*<<< orphan*/  other_end; int /*<<< orphan*/  reason; int /*<<< orphan*/  icmp_uid; int /*<<< orphan*/  session; int /*<<< orphan*/  ss_threshold; int /*<<< orphan*/  cwnd; int /*<<< orphan*/  rto; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TP_METER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct batadv_priv *bat_priv,
				 struct batadv_tp_vars *tp_vars)
{
	u32 session_cookie;

	FUNC1(BATADV_DBG_TP_METER, bat_priv,
		   "Test towards %pM finished..shutting down (reason=%d)\n",
		   tp_vars->other_end, tp_vars->reason);

	FUNC1(BATADV_DBG_TP_METER, bat_priv,
		   "Last timing stats: SRTT=%ums RTTVAR=%ums RTO=%ums\n",
		   tp_vars->srtt >> 3, tp_vars->rttvar >> 2, tp_vars->rto);

	FUNC1(BATADV_DBG_TP_METER, bat_priv,
		   "Final values: cwnd=%u ss_threshold=%u\n",
		   tp_vars->cwnd, tp_vars->ss_threshold);

	session_cookie = FUNC3(tp_vars->session,
						  tp_vars->icmp_uid);

	FUNC2(tp_vars->reason,
				tp_vars->other_end,
				bat_priv,
				tp_vars->start_time,
				FUNC0(&tp_vars->tot_sent),
				session_cookie);
}