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
struct cx2072x_priv {int /*<<< orphan*/  regmap; struct snd_soc_component* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CX2072X_AFG_POWER_STATE ; 
 int /*<<< orphan*/  CX2072X_DIGITAL_BIOS_TEST2 ; 
 int /*<<< orphan*/  CX2072X_PORTC_PIN_CTRL ; 
 int /*<<< orphan*/  cx2072x_reg_init ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cx2072x_priv* FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *codec)
{
	struct cx2072x_priv *cx2072x = FUNC6(codec);

	cx2072x->codec = codec;

	/*
	 * FIXME: below is, again, a very platform-specific init sequence,
	 * but we keep the code here just for simplicity.  It seems that all
	 * existing hardware implementations require this, so there is no very
	 * much reason to move this out of the codec driver to the platform
	 * data.
	 * But of course it's no "right" thing; if you are a good boy, don't
	 * read and follow the code like this!
	 */
	FUNC1(codec->dev);
	FUNC5(cx2072x->regmap, CX2072X_AFG_POWER_STATE, 0);

	FUNC3(cx2072x->regmap, cx2072x_reg_init,
			       FUNC0(cx2072x_reg_init));

	/* configre PortC as input device */
	FUNC4(cx2072x->regmap, CX2072X_PORTC_PIN_CTRL,
			   0x20, 0x20);

	FUNC4(cx2072x->regmap, CX2072X_DIGITAL_BIOS_TEST2,
			   0x84, 0xff);

	FUNC5(cx2072x->regmap, CX2072X_AFG_POWER_STATE, 3);
	FUNC2(codec->dev);

	return 0;
}