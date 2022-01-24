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
struct ssm2602_priv {int /*<<< orphan*/  regmap; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOUT1V_LRHP_BOTH ; 
 int /*<<< orphan*/  ROUT1V_RLHP_BOTH ; 
 int /*<<< orphan*/  SSM2602_LOUT1V ; 
 int /*<<< orphan*/  SSM2602_ROUT1V ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 struct ssm2602_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssm2602_dapm_widgets ; 
 int /*<<< orphan*/  ssm2602_routes ; 
 int /*<<< orphan*/  ssm2602_snd_controls ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC3(component);
	struct ssm2602_priv *ssm2602 = FUNC4(component);
	int ret;

	FUNC1(ssm2602->regmap, SSM2602_LOUT1V,
			    LOUT1V_LRHP_BOTH, LOUT1V_LRHP_BOTH);
	FUNC1(ssm2602->regmap, SSM2602_ROUT1V,
			    ROUT1V_RLHP_BOTH, ROUT1V_RLHP_BOTH);

	ret = FUNC2(component, ssm2602_snd_controls,
			FUNC0(ssm2602_snd_controls));
	if (ret)
		return ret;

	ret = FUNC6(dapm, ssm2602_dapm_widgets,
			FUNC0(ssm2602_dapm_widgets));
	if (ret)
		return ret;

	return FUNC5(dapm, ssm2602_routes,
			FUNC0(ssm2602_routes));
}