#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int mic_det; struct snd_soc_jack* mic_jack; } ;
struct pm860x_priv {int /*<<< orphan*/  i2c; TYPE_1__ det; } ;

/* Variables and functions */
 int /*<<< orphan*/  MICDET_MASK ; 
 int /*<<< orphan*/  REG_MIC_DET ; 
 int SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pm860x_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pm860x_priv* FUNC2 (struct snd_soc_component*) ; 

int FUNC3(struct snd_soc_component *component,
			   struct snd_soc_jack *jack, int det)
{
	struct pm860x_priv *pm860x = FUNC2(component);

	pm860x->det.mic_jack = jack;
	pm860x->det.mic_det = det;

	if (det & SND_JACK_MICROPHONE)
		FUNC1(pm860x->i2c, REG_MIC_DET,
				MICDET_MASK, MICDET_MASK);

	/* sync status */
	FUNC0(0, pm860x);
	return 0;
}