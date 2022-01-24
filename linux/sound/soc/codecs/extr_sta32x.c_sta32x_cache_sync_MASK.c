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
struct sta32x_priv {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STA32X_MMUTE ; 
 unsigned int STA32X_MMUTE_MMUTE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct sta32x_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct sta32x_priv *sta32x = FUNC3(component);
	unsigned int mute;
	int rc;

	/* mute during register sync */
	FUNC1(sta32x->regmap, STA32X_MMUTE, &mute);
	FUNC2(sta32x->regmap, STA32X_MMUTE, mute | STA32X_MMUTE_MMUTE);
	FUNC4(component);
	rc = FUNC0(sta32x->regmap);
	FUNC2(sta32x->regmap, STA32X_MMUTE, mute);
	return rc;
}