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
struct tpa6130a2_data {int dummy; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct tpa6130a2_data* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tpa6130a2_data*,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
				 struct snd_kcontrol *kctrl, int event)
{
	struct snd_soc_component *c = FUNC2(w->dapm);
	struct tpa6130a2_data *data = FUNC1(c);

	if (FUNC0(event)) {
		/* Before widget power up: turn chip on, sync registers */
		return FUNC3(data, true);
	} else {
		/* After widget power down: turn chip off */
		return FUNC3(data, false);
	}
}