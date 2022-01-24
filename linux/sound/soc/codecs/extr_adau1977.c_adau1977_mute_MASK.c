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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct adau1977 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int ADAU1977_MISC_CONTROL_MMUTE ; 
 int /*<<< orphan*/  ADAU1977_REG_MISC_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct adau1977* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute, int stream)
{
	struct adau1977 *adau1977 = FUNC1(dai->component);
	unsigned int val;

	if (mute)
		val = ADAU1977_MISC_CONTROL_MMUTE;
	else
		val = 0;

	return FUNC0(adau1977->regmap, ADAU1977_REG_MISC_CONTROL,
			ADAU1977_MISC_CONTROL_MMUTE, val);
}