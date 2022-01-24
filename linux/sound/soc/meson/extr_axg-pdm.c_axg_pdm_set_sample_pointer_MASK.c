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
typedef  int /*<<< orphan*/  u64 ;
struct axg_pdm {int /*<<< orphan*/  map; int /*<<< orphan*/  dclk; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PDM_CHAN_CTRL ; 
 int /*<<< orphan*/  PDM_CHAN_CTRL1 ; 
 int PDM_CHAN_CTRL_NUM ; 
 unsigned int PDM_CHAN_CTRL_POINTER_MAX ; 
 int PDM_CHAN_CTRL_POINTER_WIDTH ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct axg_pdm *priv)
{
	unsigned int spmax, sp, val;
	int i;

	/* Max sample counter value per half period of dclk */
	spmax = FUNC0((u64)FUNC2(priv->sysclk),
				 FUNC2(priv->dclk) * 2);

	/* Check if sysclk is not too fast - should not happen */
	if (FUNC1(spmax > PDM_CHAN_CTRL_POINTER_MAX))
		return -EINVAL;

	/* Capture the data when we are at 75% of the half period */
	sp = spmax * 3 / 4;

	for (i = 0, val = 0; i < PDM_CHAN_CTRL_NUM; i++)
		val |= sp << (PDM_CHAN_CTRL_POINTER_WIDTH * i);

	FUNC3(priv->map, PDM_CHAN_CTRL, val);
	FUNC3(priv->map, PDM_CHAN_CTRL1, val);

	return 0;
}