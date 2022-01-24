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
struct adau {int /*<<< orphan*/  regmap; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU1761_DEJITTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct adau* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct adau *adau = FUNC1(component);

	/* After any power changes have been made the dejitter circuit
	 * has to be reinitialized. */
	FUNC0(adau->regmap, ADAU1761_DEJITTER, 0);
	if (!adau->master)
		FUNC0(adau->regmap, ADAU1761_DEJITTER, 3);

	return 0;
}