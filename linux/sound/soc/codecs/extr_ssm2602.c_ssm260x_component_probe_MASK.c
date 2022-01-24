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
struct ssm2602_priv {int type; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int APANA_ENABLE_MIC_BOOST ; 
 int APANA_SELECT_DAC ; 
 int /*<<< orphan*/  LINVOL_LRIN_BOTH ; 
 int /*<<< orphan*/  RINVOL_RLIN_BOTH ; 
#define  SSM2602 129 
 int /*<<< orphan*/  SSM2602_APANA ; 
 int /*<<< orphan*/  SSM2602_LINVOL ; 
 int /*<<< orphan*/  SSM2602_RESET ; 
 int /*<<< orphan*/  SSM2602_RINVOL ; 
#define  SSM2604 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ssm2602_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct ssm2602_priv *ssm2602 = FUNC3(component);
	int ret;

	ret = FUNC2(ssm2602->regmap, SSM2602_RESET, 0);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to issue reset: %d\n", ret);
		return ret;
	}

	/* set the update bits */
	FUNC1(ssm2602->regmap, SSM2602_LINVOL,
			    LINVOL_LRIN_BOTH, LINVOL_LRIN_BOTH);
	FUNC1(ssm2602->regmap, SSM2602_RINVOL,
			    RINVOL_RLIN_BOTH, RINVOL_RLIN_BOTH);
	/*select Line in as default input*/
	FUNC2(ssm2602->regmap, SSM2602_APANA, APANA_SELECT_DAC |
			APANA_ENABLE_MIC_BOOST);

	switch (ssm2602->type) {
	case SSM2602:
		ret = FUNC4(component);
		break;
	case SSM2604:
		ret = FUNC5(component);
		break;
	}

	return ret;
}