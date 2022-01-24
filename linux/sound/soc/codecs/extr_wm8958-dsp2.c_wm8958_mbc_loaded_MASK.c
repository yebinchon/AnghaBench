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
struct wm8994_priv {int /*<<< orphan*/  fw_lock; struct firmware const* mbc; } ;
struct snd_soc_component {int dummy; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wm8994_priv* FUNC2 (struct snd_soc_component*) ; 
 scalar_t__ FUNC3 (struct snd_soc_component*,char*,struct firmware const*,int) ; 

__attribute__((used)) static void FUNC4(const struct firmware *fw, void *context)
{
	struct snd_soc_component *component = context;
	struct wm8994_priv *wm8994 = FUNC2(component);

	if (fw && (FUNC3(component, "MBC", fw, true) == 0)) {
		FUNC0(&wm8994->fw_lock);
		wm8994->mbc = fw;
		FUNC1(&wm8994->fw_lock);
	}
}