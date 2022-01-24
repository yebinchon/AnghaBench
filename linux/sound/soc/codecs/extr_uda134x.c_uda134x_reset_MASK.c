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
struct uda134x_priv {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDA134X_STATUS0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct uda134x_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static inline void FUNC3(struct snd_soc_component *component)
{
	struct uda134x_priv *uda134x = FUNC2(component);
	unsigned int mask = 1<<6;

	FUNC1(uda134x->regmap, UDA134X_STATUS0, mask, mask);
	FUNC0(1);
	FUNC1(uda134x->regmap, UDA134X_STATUS0, mask, 0);
}