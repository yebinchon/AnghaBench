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
struct rt5514_priv {int sysclk; int lrck; } ;

/* Variables and functions */
 struct rt5514_priv* FUNC0 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dapm_widget *source,
	struct snd_soc_dapm_widget *sink)
{
	struct snd_soc_component *component = FUNC1(source->dapm);
	struct rt5514_priv *rt5514 = FUNC0(component);

	return (rt5514->sysclk > rt5514->lrck * 384);
}