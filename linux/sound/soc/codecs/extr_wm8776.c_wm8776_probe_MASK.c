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
 int /*<<< orphan*/  WM8776_DACRVOL ; 
 int /*<<< orphan*/  WM8776_HPRVOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	int ret = 0;

	ret = FUNC2(component);
	if (ret < 0) {
		FUNC0(component->dev, "Failed to issue reset: %d\n", ret);
		return ret;
	}

	/* Latch the update bits; right channel only since we always
	 * update both. */
	FUNC1(component, WM8776_HPRVOL, 0x100, 0x100);
	FUNC1(component, WM8776_DACRVOL, 0x100, 0x100);

	return ret;
}