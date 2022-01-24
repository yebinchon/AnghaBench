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
struct snd_soc_dapm_widget {int dummy; } ;
struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dapm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_RUNTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_soc_dapm_widget* FUNC2 (struct snd_soc_dapm_context*,struct snd_soc_dapm_widget const*) ; 

struct snd_soc_dapm_widget *
FUNC3(struct snd_soc_dapm_context *dapm,
			 const struct snd_soc_dapm_widget *widget)
{
	struct snd_soc_dapm_widget *w;

	FUNC0(&dapm->card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
	w = FUNC2(dapm, widget);
	FUNC1(&dapm->card->dapm_mutex);

	return w;
}