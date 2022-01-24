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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
		     struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component =
		FUNC3(w->dapm);
	int ret;

	if (FUNC0(event))
		ret = FUNC2(component);
	else
		ret = FUNC1(component);

	return ret;
}