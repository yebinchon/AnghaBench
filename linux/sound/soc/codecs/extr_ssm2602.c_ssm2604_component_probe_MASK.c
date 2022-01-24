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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssm2604_dapm_widgets ; 
 int /*<<< orphan*/  ssm2604_routes ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC1(component);
	int ret;

	ret = FUNC3(dapm, ssm2604_dapm_widgets,
			FUNC0(ssm2604_dapm_widgets));
	if (ret)
		return ret;

	return FUNC2(dapm, ssm2604_routes,
			FUNC0(ssm2604_routes));
}