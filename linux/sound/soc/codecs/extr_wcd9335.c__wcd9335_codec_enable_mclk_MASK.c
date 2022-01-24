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
struct wcd9335_codec {int /*<<< orphan*/  sido_voltage; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIDO_VOLTAGE_NOMINAL_MV ; 
 struct wcd9335_codec* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wcd9335_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wcd9335_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wcd9335_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
				      int enable)
{
	struct wcd9335_codec *wcd = FUNC0(component->dev);
	int ret;

	if (enable) {
		ret = FUNC1(wcd, true);
		if (ret)
			return ret;

		FUNC2(wcd,
				SIDO_VOLTAGE_NOMINAL_MV);
	} else {
		FUNC3(wcd,
					wcd->sido_voltage);
		FUNC1(wcd, false);
	}

	return 0;
}