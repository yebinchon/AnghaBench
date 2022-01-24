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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct max9867_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX9867_DACLEVEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct max9867_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_component *component = dai->component;
	struct max9867_priv *max9867 = FUNC1(component);

	return FUNC0(max9867->regmap, MAX9867_DACLEVEL,
				  1 << 6, !!mute << 6);
}