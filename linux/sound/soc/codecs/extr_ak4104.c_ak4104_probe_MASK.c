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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct ak4104_private {int /*<<< orphan*/  regulator; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int AK4104_CONTROL1_PW ; 
 int AK4104_CONTROL1_RSTN ; 
 int /*<<< orphan*/  AK4104_REG_CONTROL1 ; 
 int /*<<< orphan*/  AK4104_REG_TX ; 
 int AK4104_TX_TXE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct ak4104_private* FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct ak4104_private *ak4104 = FUNC4(component);
	int ret;

	ret = FUNC3(ak4104->regulator);
	if (ret < 0) {
		FUNC0(component->dev, "Unable to enable regulator: %d\n", ret);
		return ret;
	}

	/* set power-up and non-reset bits */
	ret = FUNC1(ak4104->regmap, AK4104_REG_CONTROL1,
				 AK4104_CONTROL1_PW | AK4104_CONTROL1_RSTN,
				 AK4104_CONTROL1_PW | AK4104_CONTROL1_RSTN);
	if (ret < 0)
		goto exit_disable_regulator;

	/* enable transmitter */
	ret = FUNC1(ak4104->regmap, AK4104_REG_TX,
				 AK4104_TX_TXE, AK4104_TX_TXE);
	if (ret < 0)
		goto exit_disable_regulator;

	return 0;

exit_disable_regulator:
	FUNC2(ak4104->regulator);
	return ret;
}