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
struct TYPE_2__ {int hp_det; int hook_det; int hs_shrt; int lo_shrt; struct snd_soc_jack* hp_jack; } ;
struct pm860x_priv {int /*<<< orphan*/  i2c; TYPE_1__ det; } ;

/* Variables and functions */
 int CLR_SHORT_HS1 ; 
 int CLR_SHORT_HS2 ; 
 int CLR_SHORT_LO1 ; 
 int CLR_SHORT_LO2 ; 
 int EN_HS_DET ; 
 int /*<<< orphan*/  REG_HS_DET ; 
 int /*<<< orphan*/  REG_SHORTS ; 
 int SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pm860x_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct pm860x_priv* FUNC2 (struct snd_soc_component*) ; 

int FUNC3(struct snd_soc_component *component,
			  struct snd_soc_jack *jack,
			  int det, int hook, int hs_shrt, int lo_shrt)
{
	struct pm860x_priv *pm860x = FUNC2(component);
	int data;

	pm860x->det.hp_jack = jack;
	pm860x->det.hp_det = det;
	pm860x->det.hook_det = hook;
	pm860x->det.hs_shrt = hs_shrt;
	pm860x->det.lo_shrt = lo_shrt;

	if (det & SND_JACK_HEADPHONE)
		FUNC1(pm860x->i2c, REG_HS_DET,
				EN_HS_DET, EN_HS_DET);
	/* headset short detect */
	if (hs_shrt) {
		data = CLR_SHORT_HS2 | CLR_SHORT_HS1;
		FUNC1(pm860x->i2c, REG_SHORTS, data, data);
	}
	/* Lineout short detect */
	if (lo_shrt) {
		data = CLR_SHORT_LO2 | CLR_SHORT_LO1;
		FUNC1(pm860x->i2c, REG_SHORTS, data, data);
	}

	/* sync status */
	FUNC0(0, pm860x);
	return 0;
}