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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDIGI_ENABLE_DAC_MUTE ; 
 int /*<<< orphan*/  SSM2602_APDIGI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ssm2602_priv* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute)
{
	struct ssm2602_priv *ssm2602 = FUNC1(dai->component);

	if (mute)
		FUNC0(ssm2602->regmap, SSM2602_APDIGI,
				    APDIGI_ENABLE_DAC_MUTE,
				    APDIGI_ENABLE_DAC_MUTE);
	else
		FUNC0(ssm2602->regmap, SSM2602_APDIGI,
				    APDIGI_ENABLE_DAC_MUTE, 0);
	return 0;
}