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
struct batadv_tp_vars {int /*<<< orphan*/  timer; int /*<<< orphan*/  refcount; int /*<<< orphan*/  list; int /*<<< orphan*/  unacked_list; int /*<<< orphan*/  unacked_lock; struct batadv_priv* bat_priv; int /*<<< orphan*/  last_recv; int /*<<< orphan*/  session; int /*<<< orphan*/  role; int /*<<< orphan*/  other_end; } ;
struct batadv_priv {int /*<<< orphan*/  tp_list_lock; int /*<<< orphan*/  tp_list; int /*<<< orphan*/  tp_num; } ;
struct batadv_icmp_tp_packet {int /*<<< orphan*/  session; int /*<<< orphan*/  orig; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TP_METER ; 
 int /*<<< orphan*/  BATADV_TP_FIRST_SEQ ; 
 int /*<<< orphan*/  BATADV_TP_MAX_NUM ; 
 int /*<<< orphan*/  BATADV_TP_RECEIVER ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct batadv_priv*,char*) ; 
 struct batadv_tp_vars* FUNC3 (struct batadv_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  batadv_tp_receiver_shutdown ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_tp_vars*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct batadv_tp_vars* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct batadv_tp_vars *
FUNC15(struct batadv_priv *bat_priv,
		    const struct batadv_icmp_tp_packet *icmp)
{
	struct batadv_tp_vars *tp_vars;

	FUNC11(&bat_priv->tp_list_lock);
	tp_vars = FUNC3(bat_priv, icmp->orig,
					      icmp->session);
	if (tp_vars)
		goto out_unlock;

	if (!FUNC1(&bat_priv->tp_num, 1, BATADV_TP_MAX_NUM)) {
		FUNC2(BATADV_DBG_TP_METER, bat_priv,
			   "Meter: too many ongoing sessions, aborting (RECV)\n");
		goto out_unlock;
	}

	tp_vars = FUNC7(sizeof(*tp_vars), GFP_ATOMIC);
	if (!tp_vars)
		goto out_unlock;

	FUNC5(tp_vars->other_end, icmp->orig);
	tp_vars->role = BATADV_TP_RECEIVER;
	FUNC10(tp_vars->session, icmp->session, sizeof(tp_vars->session));
	tp_vars->last_recv = BATADV_TP_FIRST_SEQ;
	tp_vars->bat_priv = bat_priv;
	FUNC9(&tp_vars->refcount);

	FUNC12(&tp_vars->unacked_lock);
	FUNC0(&tp_vars->unacked_list);

	FUNC8(&tp_vars->refcount);
	FUNC6(&tp_vars->list, &bat_priv->tp_list);

	FUNC8(&tp_vars->refcount);
	FUNC14(&tp_vars->timer, batadv_tp_receiver_shutdown, 0);

	FUNC4(tp_vars);

out_unlock:
	FUNC13(&bat_priv->tp_list_lock);

	return tp_vars;
}