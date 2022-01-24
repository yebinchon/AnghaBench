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
struct rt5640_priv {int /*<<< orphan*/  asrc_en; } ;

/* Variables and functions */
 struct rt5640_priv* FUNC0 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dapm_widget *source,
			 struct snd_soc_dapm_widget *sink)
{
	struct snd_soc_component *component = FUNC1(source->dapm);
	struct rt5640_priv *rt5640 = FUNC0(component);

	if (!rt5640->asrc_en)
		return 0;

	return 1;
}