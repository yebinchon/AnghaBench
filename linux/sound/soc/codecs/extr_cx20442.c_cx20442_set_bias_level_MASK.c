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
struct snd_soc_component {int dummy; } ;
struct cx20442_priv {int /*<<< orphan*/  por; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int const FUNC4 (struct snd_soc_component*) ; 
 struct cx20442_priv* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
		enum snd_soc_bias_level level)
{
	struct cx20442_priv *cx20442 = FUNC5(component);
	int err = 0;

	switch (level) {
	case SND_SOC_BIAS_PREPARE:
		if (FUNC4(component) != SND_SOC_BIAS_STANDBY)
			break;
		if (FUNC0(cx20442->por))
			err = FUNC1(cx20442->por);
		else
			err = FUNC3(cx20442->por);
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC4(component) != SND_SOC_BIAS_PREPARE)
			break;
		if (FUNC0(cx20442->por))
			err = FUNC1(cx20442->por);
		else
			err = FUNC2(cx20442->por);
		break;
	default:
		break;
	}

	return err;
}