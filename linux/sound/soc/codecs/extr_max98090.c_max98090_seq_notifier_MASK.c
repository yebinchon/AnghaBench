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
struct max98090_priv {int shdn_pending; } ;
typedef  enum snd_soc_dapm_type { ____Placeholder_snd_soc_dapm_type } snd_soc_dapm_type ;

/* Variables and functions */
 int /*<<< orphan*/  M98090_REG_DEVICE_SHUTDOWN ; 
 int /*<<< orphan*/  M98090_SHDNN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct max98090_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_component *component,
	enum snd_soc_dapm_type event, int subseq)
{
	struct max98090_priv *max98090 = FUNC1(component);

	if (max98090->shdn_pending) {
		FUNC2(component, M98090_REG_DEVICE_SHUTDOWN,
				M98090_SHDNN_MASK, 0);
		FUNC0(40);
		FUNC2(component, M98090_REG_DEVICE_SHUTDOWN,
				M98090_SHDNN_MASK, M98090_SHDNN_MASK);
		max98090->shdn_pending = false;
	}
}