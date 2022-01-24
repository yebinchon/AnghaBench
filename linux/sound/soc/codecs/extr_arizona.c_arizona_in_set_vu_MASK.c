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
struct arizona_priv {int num_inputs; } ;

/* Variables and functions */
 scalar_t__ ARIZONA_ADC_DIGITAL_VOLUME_1L ; 
 unsigned int ARIZONA_IN_VU ; 
 struct arizona_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,scalar_t__,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component, int ena)
{
	struct arizona_priv *priv = FUNC0(component);
	unsigned int val;
	int i;

	if (ena)
		val = ARIZONA_IN_VU;
	else
		val = 0;

	for (i = 0; i < priv->num_inputs; i++)
		FUNC1(component,
				    ARIZONA_ADC_DIGITAL_VOLUME_1L + (i * 4),
				    ARIZONA_IN_VU, val);
}