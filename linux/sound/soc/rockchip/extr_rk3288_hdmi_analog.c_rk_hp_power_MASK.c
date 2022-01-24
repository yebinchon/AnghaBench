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
struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct rk_drvdata {int /*<<< orphan*/  gpio_hp_en; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rk_drvdata* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
		       struct snd_kcontrol *k, int event)
{
	struct rk_drvdata *machine = FUNC3(w->dapm->card);

	if (!FUNC1(machine->gpio_hp_en))
		return 0;

	FUNC2(machine->gpio_hp_en,
				FUNC0(event));

	return 0;
}