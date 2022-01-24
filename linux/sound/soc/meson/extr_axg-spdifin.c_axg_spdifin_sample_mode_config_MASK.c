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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct axg_spdifin {int /*<<< orphan*/  map; int /*<<< orphan*/  refclk; TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  SPDIFIN_CTRL0 ; 
 int /*<<< orphan*/  SPDIFIN_CTRL0_WIDTH_SEL ; 
 int /*<<< orphan*/  SPDIFIN_CTRL1 ; 
 int /*<<< orphan*/  SPDIFIN_CTRL1_BASE_TIMER ; 
 int SPDIFIN_MODE_NUM ; 
 unsigned int FUNC1 (struct axg_spdifin*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dai *dai,
					  struct axg_spdifin *priv)
{
	unsigned int rate, t_next;
	int ret, i = SPDIFIN_MODE_NUM - 1;

	/* Set spdif input reference clock */
	ret = FUNC5(priv->refclk, priv->conf->ref_rate);
	if (ret) {
		FUNC6(dai->dev, "reference clock rate set failed\n");
		return ret;
	}

	/*
	 * The rate actually set might be slightly different, get
	 * the actual rate for the following mode calculation
	 */
	rate = FUNC4(priv->refclk);

	/* HW will update mode every 1ms */
	FUNC7(priv->map, SPDIFIN_CTRL1,
			   SPDIFIN_CTRL1_BASE_TIMER,
			   FUNC0(SPDIFIN_CTRL1_BASE_TIMER, rate / 1000));

	/* Threshold based on the minimum width between two edges */
	FUNC7(priv->map, SPDIFIN_CTRL0,
			   SPDIFIN_CTRL0_WIDTH_SEL, SPDIFIN_CTRL0_WIDTH_SEL);

	/* Calculate the last timer which has no threshold */
	t_next = FUNC1(priv, i, rate);
	FUNC3(priv->map, i, t_next);

	do {
		unsigned int t;

		i -= 1;

		/* Calculate the timer */
		t = FUNC1(priv, i, rate);

		/* Set the timer value */
		FUNC3(priv->map, i, t);

		/* Set the threshold value */
		FUNC2(priv->map, i, t + t_next);

		/* Save the current timer for the next threshold calculation */
		t_next = t;

	} while (i > 0);

	return 0;
}