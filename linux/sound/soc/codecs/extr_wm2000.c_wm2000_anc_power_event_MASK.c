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
struct wm2000_priv {int anc_eng_ena; int /*<<< orphan*/  lock; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct wm2000_priv* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wm2000_priv*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dapm_widget *w,
				  struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct wm2000_priv *wm2000 = FUNC2(component->dev);
	int ret;

	FUNC3(&wm2000->lock);

	if (FUNC1(event))
		wm2000->anc_eng_ena = 1;

	if (FUNC0(event))
		wm2000->anc_eng_ena = 0;

	ret = FUNC6(wm2000);

	FUNC4(&wm2000->lock);

	return ret;
}