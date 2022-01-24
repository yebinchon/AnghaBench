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
struct rt5668_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rt5668_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component)
{
	struct rt5668_priv *rt5668 = FUNC1(component);

	FUNC0(rt5668->regmap);
}