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
struct ak4458_priv {scalar_t__ mute_gpiod; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4458_00_CONTROL1 ; 
 int /*<<< orphan*/  FUNC0 (struct ak4458_priv*) ; 
 int FUNC1 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 struct ak4458_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct ak4458_priv *ak4458 = FUNC3(component);
	int ret;

	/* External Mute ON */
	if (ak4458->mute_gpiod)
		FUNC2(ak4458->mute_gpiod, 1);

	FUNC0(ak4458);

	ret = FUNC4(component, AK4458_00_CONTROL1,
			    0x80, 0x80);   /* ACKS bit = 1; 10000000 */
	if (ret < 0)
		return ret;

	return FUNC1(component, 1);
}