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
struct task_struct {int dummy; } ;
struct batadv_tp_vars {int /*<<< orphan*/  other_end; int /*<<< orphan*/  icmp_uid; int /*<<< orphan*/  session; int /*<<< orphan*/  refcount; struct batadv_priv* bat_priv; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_TP_REASON_MEMORY_ERROR ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  batadv_tp_send ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,struct batadv_tp_vars*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_tp_vars*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC6 (int /*<<< orphan*/ ,struct batadv_tp_vars*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

__attribute__((used)) static void FUNC9(struct batadv_tp_vars *tp_vars)
{
	struct task_struct *kthread;
	struct batadv_priv *bat_priv = tp_vars->bat_priv;
	u32 session_cookie;

	FUNC5(&tp_vars->refcount);
	kthread = FUNC6(batadv_tp_send, tp_vars, "kbatadv_tp_meter");
	if (FUNC0(kthread)) {
		session_cookie = FUNC3(tp_vars->session,
							  tp_vars->icmp_uid);
		FUNC7("batadv: cannot create tp meter kthread\n");
		FUNC1(BATADV_TP_REASON_MEMORY_ERROR,
					      tp_vars->other_end,
					      bat_priv, session_cookie);

		/* drop reserved reference for kthread */
		FUNC4(tp_vars);

		/* cleanup of failed tp meter variables */
		FUNC2(bat_priv, tp_vars);
		return;
	}

	FUNC8(kthread);
}