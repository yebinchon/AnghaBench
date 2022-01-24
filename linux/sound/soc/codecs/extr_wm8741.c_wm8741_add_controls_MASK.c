#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int diff_mode; } ;
struct wm8741_priv {TYPE_1__ pdata; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  WM8741_DIFF_MODE_MONO_LEFT 131 
#define  WM8741_DIFF_MODE_MONO_RIGHT 130 
#define  WM8741_DIFF_MODE_STEREO 129 
#define  WM8741_DIFF_MODE_STEREO_REVERSED 128 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wm8741_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  wm8741_snd_controls_mono_left ; 
 int /*<<< orphan*/  wm8741_snd_controls_mono_right ; 
 int /*<<< orphan*/  wm8741_snd_controls_stereo ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct wm8741_priv *wm8741 = FUNC2(component);

	switch (wm8741->pdata.diff_mode) {
	case WM8741_DIFF_MODE_STEREO:
	case WM8741_DIFF_MODE_STEREO_REVERSED:
		FUNC1(component,
				wm8741_snd_controls_stereo,
				FUNC0(wm8741_snd_controls_stereo));
		break;
	case WM8741_DIFF_MODE_MONO_LEFT:
		FUNC1(component,
				wm8741_snd_controls_mono_left,
				FUNC0(wm8741_snd_controls_mono_left));
		break;
	case WM8741_DIFF_MODE_MONO_RIGHT:
		FUNC1(component,
				wm8741_snd_controls_mono_right,
				FUNC0(wm8741_snd_controls_mono_right));
		break;
	default:
		return -EINVAL;
	}

	return 0;
}