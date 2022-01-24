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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_ASRC_RATE1 ; 
 unsigned int ARIZONA_ASRC_RATE1_MASK ; 
 unsigned int ARIZONA_ASRC_RATE1_SHIFT ; 
 int /*<<< orphan*/  ARIZONA_ASRC_RATE2 ; 
 unsigned int ARIZONA_ASRC_RATE2_MASK ; 
 unsigned int ARIZONA_ASRC_RATE2_SHIFT ; 
 int /*<<< orphan*/  ARIZONA_ASYNC_SAMPLE_RATE_1 ; 
 int /*<<< orphan*/  ARIZONA_SAMPLE_RATE_1 ; 
 int EINVAL ; 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
			  struct snd_kcontrol *kcontrol,
			  int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	unsigned int val;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		val = FUNC3(component, ARIZONA_ASRC_RATE1);
		val &= ARIZONA_ASRC_RATE1_MASK;
		val >>= ARIZONA_ASRC_RATE1_SHIFT;

		switch (val) {
		case 0:
		case 1:
		case 2:
			val = FUNC3(component,
					   ARIZONA_SAMPLE_RATE_1 + val);
			if (val >= 0x11) {
				FUNC2(component->dev,
					 "Unsupported ASRC rate1 (%s)\n",
					 FUNC0(val));
				return -EINVAL;
			}
			break;
		default:
			FUNC1(component->dev,
				"Illegal ASRC rate1 selector (0x%x)\n",
				val);
			return -EINVAL;
		}

		val = FUNC3(component, ARIZONA_ASRC_RATE2);
		val &= ARIZONA_ASRC_RATE2_MASK;
		val >>= ARIZONA_ASRC_RATE2_SHIFT;

		switch (val) {
		case 8:
		case 9:
			val -= 0x8;
			val = FUNC3(component,
					   ARIZONA_ASYNC_SAMPLE_RATE_1 + val);
			if (val >= 0x11) {
				FUNC2(component->dev,
					 "Unsupported ASRC rate2 (%s)\n",
					 FUNC0(val));
				return -EINVAL;
			}
			break;
		default:
			FUNC1(component->dev,
				"Illegal ASRC rate2 selector (0x%x)\n",
				val);
			return -EINVAL;
		}
		break;
	default:
		return -EINVAL;
	}

	return 0;
}