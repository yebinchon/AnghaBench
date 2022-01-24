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
struct snd_ml403_ac97cr {scalar_t__ irq; scalar_t__ capture_irq; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  INIT_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct snd_ml403_ac97cr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ml403_ac97cr*) ; 

__attribute__((used)) static int FUNC4(struct snd_ml403_ac97cr *ml403_ac97cr)
{
	FUNC0(INIT_INFO, "free():\n");
	/* irq release */
	if (ml403_ac97cr->irq >= 0)
		FUNC1(ml403_ac97cr->irq, ml403_ac97cr);
	if (ml403_ac97cr->capture_irq >= 0)
		FUNC1(ml403_ac97cr->capture_irq, ml403_ac97cr);
	/* give back "port" */
	FUNC2(ml403_ac97cr->port);
	FUNC3(ml403_ac97cr);
	FUNC0(INIT_INFO, "free(): (done)\n");
	return 0;
}