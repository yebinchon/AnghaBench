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
struct tlv320dac33_priv {int /*<<< orphan*/  mutex; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_soc_component*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tlv320dac33_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component, unsigned int reg,
			      unsigned int value)
{
	struct tlv320dac33_priv *dac33 = FUNC3(component);
	int ret;

	FUNC1(&dac33->mutex);
	ret = FUNC0(component, reg, value);
	FUNC2(&dac33->mutex);

	return ret;
}