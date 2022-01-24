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
struct wm5100_priv {int dummy; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int WM5100_CLKGEN_ERR_ASYNC_STS ; 
 int WM5100_CLKGEN_ERR_STS ; 
 int /*<<< orphan*/  WM5100_INTERRUPT_RAW_STATUS_3 ; 
 int /*<<< orphan*/  WM5100_INTERRUPT_RAW_STATUS_4 ; 
 int WM5100_SPK_SHUTDOWN_STS ; 
 int WM5100_SPK_SHUTDOWN_WARN_STS ; 
 struct wm5100_priv* FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wm5100_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wm5100_priv*,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
			  struct snd_kcontrol *kcontrol,
			  int event)
{
	struct snd_soc_component *component = FUNC2(w->dapm);
	struct wm5100_priv *wm5100 = FUNC0(component);
	int ret;

	ret = FUNC1(component, WM5100_INTERRUPT_RAW_STATUS_3);
	ret &= WM5100_SPK_SHUTDOWN_WARN_STS |
		WM5100_SPK_SHUTDOWN_STS | WM5100_CLKGEN_ERR_STS |
		WM5100_CLKGEN_ERR_ASYNC_STS;
	FUNC3(wm5100, ret);

	ret = FUNC1(component, WM5100_INTERRUPT_RAW_STATUS_4);
	FUNC4(wm5100, ret);

	return 0;
}