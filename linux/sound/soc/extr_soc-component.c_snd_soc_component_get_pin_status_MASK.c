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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  name_prefix; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_dapm_context*,char const*) ; 

int FUNC4(struct snd_soc_component *component,
				     const char *pin)
{
	struct snd_soc_dapm_context *dapm =
		FUNC2(component);
	char *full_name;
	int ret;

	if (!component->name_prefix)
		return FUNC3(dapm, pin);

	full_name = FUNC0(GFP_KERNEL, "%s %s", component->name_prefix, pin);
	if (!full_name)
		return -ENOMEM;

	ret = FUNC3(dapm, full_name);
	FUNC1(full_name);

	return ret;
}