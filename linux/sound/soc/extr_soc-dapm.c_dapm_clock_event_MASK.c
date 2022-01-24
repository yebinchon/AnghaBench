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
struct snd_soc_dapm_widget {int /*<<< orphan*/  clk; int /*<<< orphan*/  dapm; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct snd_soc_dapm_widget *w,
		   struct snd_kcontrol *kcontrol, int event)
{
	if (!w->clk)
		return -EIO;

	FUNC3(w->dapm);

	if (FUNC0(event)) {
		return FUNC2(w->clk);
	} else {
		FUNC1(w->clk);
		return 0;
	}

	return 0;
}