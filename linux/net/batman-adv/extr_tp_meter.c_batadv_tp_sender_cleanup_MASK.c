#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct batadv_tp_vars {int /*<<< orphan*/  timer; TYPE_1__* bat_priv; int /*<<< orphan*/  list; int /*<<< orphan*/  finish_work; } ;
struct batadv_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tp_num; int /*<<< orphan*/  tp_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_tp_vars*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct batadv_priv *bat_priv,
				     struct batadv_tp_vars *tp_vars)
{
	FUNC2(&tp_vars->finish_work);

	FUNC6(&tp_vars->bat_priv->tp_list_lock);
	FUNC5(&tp_vars->list);
	FUNC7(&tp_vars->bat_priv->tp_list_lock);

	/* drop list reference */
	FUNC1(tp_vars);

	FUNC0(&tp_vars->bat_priv->tp_num);

	/* kill the timer and remove its reference */
	FUNC4(&tp_vars->timer);
	/* the worker might have rearmed itself therefore we kill it again. Note
	 * that if the worker should run again before invoking the following
	 * del_timer(), it would not re-arm itself once again because the status
	 * is OFF now
	 */
	FUNC3(&tp_vars->timer);
	FUNC1(tp_vars);
}