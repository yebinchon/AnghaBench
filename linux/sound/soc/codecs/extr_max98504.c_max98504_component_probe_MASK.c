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
struct regmap {int dummy; } ;
struct max98504_priv {int brownout_threshold; int brownout_attenuation; int brownout_attack_hold; int brownout_timed_hold; int brownout_release_rate; int /*<<< orphan*/  brownout_enable; int /*<<< orphan*/  supplies; struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX98504_NUM_SUPPLIES ; 
 int /*<<< orphan*/  MAX98504_PVDD_BROWNOUT_CONFIG_1 ; 
 int /*<<< orphan*/  MAX98504_PVDD_BROWNOUT_CONFIG_2 ; 
 int /*<<< orphan*/  MAX98504_PVDD_BROWNOUT_CONFIG_3 ; 
 int /*<<< orphan*/  MAX98504_PVDD_BROWNOUT_CONFIG_4 ; 
 int /*<<< orphan*/  MAX98504_PVDD_BROWNOUT_ENABLE ; 
 int /*<<< orphan*/  MAX98504_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max98504_priv* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *c)
{
	struct max98504_priv *max98504 = FUNC3(c);
	struct regmap *map = max98504->regmap;
	int ret;

	ret = FUNC2(MAX98504_NUM_SUPPLIES, max98504->supplies);
	if (ret < 0)
		return ret;

	FUNC1(map, MAX98504_SOFTWARE_RESET, 0x1);
	FUNC0(20);

	if (!max98504->brownout_enable)
		return 0;

	FUNC1(map, MAX98504_PVDD_BROWNOUT_ENABLE, 0x1);

	FUNC1(map, MAX98504_PVDD_BROWNOUT_CONFIG_1,
		     (max98504->brownout_threshold & 0x1f) << 3 |
		     (max98504->brownout_attenuation & 0x3));

	FUNC1(map, MAX98504_PVDD_BROWNOUT_CONFIG_2,
		     max98504->brownout_attack_hold & 0xff);

	FUNC1(map, MAX98504_PVDD_BROWNOUT_CONFIG_3,
		     max98504->brownout_timed_hold & 0xff);

	FUNC1(map, MAX98504_PVDD_BROWNOUT_CONFIG_4,
		     max98504->brownout_release_rate & 0xff);

	return 0;
}