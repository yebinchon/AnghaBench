#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct cpcap_audio {int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CPCAP_DAI_HIFI ; 
 int /*<<< orphan*/  CPCAP_DAI_VOICE ; 
 int FUNC1 (struct cpcap_audio*,int) ; 
 TYPE_1__* cpcap_default_regs ; 
 int FUNC2 (struct cpcap_audio*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct cpcap_audio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpcap_audio* FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component,
			     bool swap_dai_configuration)
{
	struct cpcap_audio *cpcap = FUNC6(component);
	int i, err = 0;

	FUNC4(component->dev, "init audio codec");

	for (i = 0; i < FUNC0(cpcap_default_regs); i++) {
		err = FUNC5(cpcap->regmap,
					 cpcap_default_regs[i].reg,
					 cpcap_default_regs[i].mask,
					 cpcap_default_regs[i].val);
		if (err)
			return err;
	}

	/* setup default settings */
	err = FUNC1(cpcap, swap_dai_configuration);
	if (err)
		return err;

	err = FUNC3(cpcap, CPCAP_DAI_HIFI, 0, 26000000);
	if (err)
		return err;
	err = FUNC3(cpcap, CPCAP_DAI_VOICE, 0, 26000000);
	if (err)
		return err;

	err = FUNC2(cpcap, CPCAP_DAI_HIFI, 48000);
	if (err)
		return err;

	err = FUNC2(cpcap, CPCAP_DAI_VOICE, 48000);
	if (err)
		return err;

	return 0;
}