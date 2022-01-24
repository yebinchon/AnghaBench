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
struct axg_pdm {TYPE_1__* cfg; int /*<<< orphan*/  sysclk; } ;
struct TYPE_2__ {unsigned int sys_rate; } ;

/* Variables and functions */
 unsigned int PDM_CHAN_CTRL_POINTER_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct axg_pdm *priv, unsigned int os,
			      unsigned int rate)
{
	unsigned int sys_rate = os * 2 * rate * PDM_CHAN_CTRL_POINTER_MAX;

	/*
	 * Set the default system clock rate unless it is too fast for
	 * for the requested sample rate. In this case, the sample pointer
	 * counter could overflow so set a lower system clock rate
	 */
	if (sys_rate < priv->cfg->sys_rate)
		return FUNC0(priv->sysclk, sys_rate);

	return FUNC0(priv->sysclk, priv->cfg->sys_rate);
}