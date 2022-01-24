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
struct fsl_asrc_pair {int index; int channels; struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {int /*<<< orphan*/  regmap; } ;
typedef  enum asrc_pair_index { ____Placeholder_asrc_pair_index } asrc_pair_index ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ASRIER_AOLIE ; 
 int /*<<< orphan*/  REG_ASRCFG ; 
 int /*<<< orphan*/  REG_ASRCNCR ; 
 int /*<<< orphan*/  REG_ASRCTR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  REG_ASRIER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct fsl_asrc_pair *pair)
{
	struct fsl_asrc *asrc_priv = pair->asrc_priv;
	enum asrc_pair_index index = pair->index;
	int reg, retry = 10, i;

	/* Enable the current pair */
	FUNC5(asrc_priv->regmap, REG_ASRCTR,
			   FUNC2(index), FUNC1(index));

	/* Wait for status of initialization */
	do {
		FUNC7(5);
		FUNC4(asrc_priv->regmap, REG_ASRCFG, &reg);
		reg &= FUNC0(index);
	} while (!reg && --retry);

	/* Make the input fifo to ASRC STALL level */
	FUNC4(asrc_priv->regmap, REG_ASRCNCR, &reg);
	for (i = 0; i < pair->channels * 4; i++)
		FUNC6(asrc_priv->regmap, FUNC3(index), 0);

	/* Enable overload interrupt */
	FUNC6(asrc_priv->regmap, REG_ASRIER, ASRIER_AOLIE);
}