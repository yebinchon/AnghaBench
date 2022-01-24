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
struct wm8994_priv {int /*<<< orphan*/  accdet_lock; int /*<<< orphan*/  active_refcount; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM1811_JACKDET_MODE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wm8994_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	struct wm8994_priv *wm8994 = FUNC3(component);

	FUNC1(&wm8994->accdet_lock);

	wm8994->active_refcount++;

	FUNC0(component->dev, "Active refcount incremented, now %d\n",
		wm8994->active_refcount);

	/* If we're using jack detection go into audio mode */
	FUNC4(component, WM1811_JACKDET_MODE_AUDIO);

	FUNC2(&wm8994->accdet_lock);
}