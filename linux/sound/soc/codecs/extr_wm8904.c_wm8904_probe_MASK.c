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
struct wm8904_priv {int devtype; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  capture; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM8904 129 
#define  WM8912 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct wm8904_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 
 TYPE_1__ wm8904_dai ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct wm8904_priv *wm8904 = FUNC2(component);

	switch (wm8904->devtype) {
	case WM8904:
		break;
	case WM8912:
		FUNC1(&wm8904_dai.capture, 0, sizeof(wm8904_dai.capture));
		break;
	default:
		FUNC0(component->dev, "Unknown device type %d\n",
			wm8904->devtype);
		return -EINVAL;
	}

	FUNC4(component);

	FUNC3(component);

	return 0;
}