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
struct snd_opl3 {int /*<<< orphan*/ * timer1; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_opl3*,int) ; 
 int FUNC2 (struct snd_opl3*,int) ; 

int FUNC3(struct snd_opl3 * opl3, int timer1_dev, int timer2_dev)
{
	int err;

	if (timer1_dev >= 0)
		if ((err = FUNC1(opl3, timer1_dev)) < 0)
			return err;
	if (timer2_dev >= 0) {
		if ((err = FUNC2(opl3, timer2_dev)) < 0) {
			FUNC0(opl3->card, opl3->timer1);
			opl3->timer1 = NULL;
			return err;
		}
	}
	return 0;
}