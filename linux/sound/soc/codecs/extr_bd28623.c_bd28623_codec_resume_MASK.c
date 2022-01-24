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
struct bd28623_priv {scalar_t__ switch_spk; int /*<<< orphan*/  mute_gpio; } ;

/* Variables and functions */
 int FUNC0 (struct bd28623_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct bd28623_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct bd28623_priv *bd = FUNC2(component);
	int ret;

	ret = FUNC0(bd);
	if (ret)
		return ret;

	FUNC1(bd->mute_gpio, bd->switch_spk ? 0 : 1);

	return 0;
}