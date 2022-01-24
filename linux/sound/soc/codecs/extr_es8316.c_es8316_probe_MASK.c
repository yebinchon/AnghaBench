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
struct es8316_priv {int /*<<< orphan*/  mclk; struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  ES8316_CLKMGR_ADCOSR ; 
 int /*<<< orphan*/  ES8316_RESET ; 
 int ES8316_RESET_CSM_ON ; 
 int /*<<< orphan*/  ES8316_SYS_VMIDSEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct es8316_priv* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct es8316_priv *es8316 = FUNC7(component);
	int ret;

	es8316->component = component;

	es8316->mclk = FUNC5(component->dev, "mclk");
	if (FUNC0(es8316->mclk)) {
		FUNC3(component->dev, "unable to get mclk\n");
		return FUNC1(es8316->mclk);
	}
	if (!es8316->mclk)
		FUNC4(component->dev, "assuming static mclk\n");

	ret = FUNC2(es8316->mclk);
	if (ret) {
		FUNC3(component->dev, "unable to enable mclk\n");
		return ret;
	}

	/* Reset codec and enable current state machine */
	FUNC8(component, ES8316_RESET, 0x3f);
	FUNC9(5000, 5500);
	FUNC8(component, ES8316_RESET, ES8316_RESET_CSM_ON);
	FUNC6(30);

	/*
	 * Documentation is unclear, but this value from the vendor driver is
	 * needed otherwise audio output is silent.
	 */
	FUNC8(component, ES8316_SYS_VMIDSEL, 0xff);

	/*
	 * Documentation for this register is unclear and incomplete,
	 * but here is a vendor-provided value that improves volume
	 * and quality for Intel CHT platforms.
	 */
	FUNC8(component, ES8316_CLKMGR_ADCOSR, 0x32);

	return 0;
}