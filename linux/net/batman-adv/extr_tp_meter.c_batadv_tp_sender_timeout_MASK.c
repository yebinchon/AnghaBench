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
struct timer_list {int dummy; } ;
struct batadv_tp_vars {int rto; int ss_threshold; int cwnd; int /*<<< orphan*/  more_bytes; int /*<<< orphan*/  last_acked; scalar_t__ last_sent; int /*<<< orphan*/  cwnd_lock; int /*<<< orphan*/  other_end; int /*<<< orphan*/  sending; struct batadv_priv* bat_priv; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TP_METER ; 
 int BATADV_TP_MAX_RTO ; 
 int BATADV_TP_PLEN ; 
 int /*<<< orphan*/  BATADV_TP_REASON_DST_UNREACHABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_tp_vars*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_tp_vars*,int /*<<< orphan*/ ) ; 
 struct batadv_tp_vars* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 struct batadv_tp_vars* tp_vars ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct batadv_tp_vars *tp_vars = FUNC4(tp_vars, t, timer);
	struct batadv_priv *bat_priv = tp_vars->bat_priv;

	if (FUNC0(&tp_vars->sending) == 0)
		return;

	/* if the user waited long enough...shutdown the test */
	if (FUNC7(tp_vars->rto >= BATADV_TP_MAX_RTO)) {
		FUNC3(tp_vars,
					  BATADV_TP_REASON_DST_UNREACHABLE);
		return;
	}

	/* RTO exponential backoff
	 * Details in Section 5.5 of RFC6298
	 */
	tp_vars->rto <<= 1;

	FUNC5(&tp_vars->cwnd_lock);

	tp_vars->ss_threshold = tp_vars->cwnd >> 1;
	if (tp_vars->ss_threshold < BATADV_TP_PLEN * 2)
		tp_vars->ss_threshold = BATADV_TP_PLEN * 2;

	FUNC1(BATADV_DBG_TP_METER, bat_priv,
		   "Meter: RTO fired during test towards %pM! cwnd=%u new ss_thr=%u, resetting last_sent to %u\n",
		   tp_vars->other_end, tp_vars->cwnd, tp_vars->ss_threshold,
		   FUNC0(&tp_vars->last_acked));

	tp_vars->cwnd = BATADV_TP_PLEN * 3;

	FUNC6(&tp_vars->cwnd_lock);

	/* resend the non-ACKed packets.. */
	tp_vars->last_sent = FUNC0(&tp_vars->last_acked);
	FUNC8(&tp_vars->more_bytes);

	FUNC2(tp_vars);
}