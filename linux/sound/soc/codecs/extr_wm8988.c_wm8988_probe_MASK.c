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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8988_RADC ; 
 int /*<<< orphan*/  WM8988_RDAC ; 
 int /*<<< orphan*/  WM8988_RINVOL ; 
 int /*<<< orphan*/  WM8988_ROUT1V ; 
 int /*<<< orphan*/  WM8988_ROUT2V ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	int ret = 0;

	ret = FUNC2(component);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to issue reset\n");
		return ret;
	}

	/* set the update bits (we always update left then right) */
	FUNC1(component, WM8988_RADC, 0x0100, 0x0100);
	FUNC1(component, WM8988_RDAC, 0x0100, 0x0100);
	FUNC1(component, WM8988_ROUT1V, 0x0100, 0x0100);
	FUNC1(component, WM8988_ROUT2V, 0x0100, 0x0100);
	FUNC1(component, WM8988_RINVOL, 0x0100, 0x0100);

	return 0;
}