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
struct wm8903_priv {int dcs_pending; int* dcs_cache; scalar_t__ class_w_users; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_dapm_type { ____Placeholder_snd_soc_dapm_type } snd_soc_dapm_type ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  WM8903_DCS_ENA_MASK ; 
 int /*<<< orphan*/  WM8903_DCS_MODE_MASK ; 
#define  WM8903_DCS_MODE_START_STOP 129 
#define  WM8903_DCS_MODE_WRITE_STOP 128 
 int /*<<< orphan*/  WM8903_DC_SERVO_0 ; 
 int /*<<< orphan*/  WM8903_DC_SERVO_2 ; 
 scalar_t__ WM8903_DC_SERVO_4 ; 
 int /*<<< orphan*/  WM8903_DC_SERVO_READBACK_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct wm8903_priv* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC8(struct snd_soc_component *component,
				enum snd_soc_dapm_type event, int subseq)
{
	struct wm8903_priv *wm8903 = FUNC4(component);
	int dcs_mode = WM8903_DCS_MODE_WRITE_STOP;
	int i, val;

	/* Complete any pending DC servo starts */
	if (wm8903->dcs_pending) {
		FUNC1(component->dev, "Starting DC servo for %x\n",
			wm8903->dcs_pending);

		/* If we've no cached values then we need to do startup */
		for (i = 0; i < FUNC0(wm8903->dcs_cache); i++) {
			if (!(wm8903->dcs_pending & (1 << i)))
				continue;

			if (wm8903->dcs_cache[i]) {
				FUNC1(component->dev,
					"Restore DC servo %d value %x\n",
					3 - i, wm8903->dcs_cache[i]);

				FUNC7(component, WM8903_DC_SERVO_4 + i,
					      wm8903->dcs_cache[i] & 0xff);
			} else {
				FUNC1(component->dev,
					"Calibrate DC servo %d\n", 3 - i);
				dcs_mode = WM8903_DCS_MODE_START_STOP;
			}
		}

		/* Don't trust the cache for analogue */
		if (wm8903->class_w_users)
			dcs_mode = WM8903_DCS_MODE_START_STOP;

		FUNC6(component, WM8903_DC_SERVO_2,
				    WM8903_DCS_MODE_MASK, dcs_mode);

		FUNC6(component, WM8903_DC_SERVO_0,
				    WM8903_DCS_ENA_MASK, wm8903->dcs_pending);

		switch (dcs_mode) {
		case WM8903_DCS_MODE_WRITE_STOP:
			break;

		case WM8903_DCS_MODE_START_STOP:
			FUNC2(270);

			/* Cache the measured offsets for digital */
			if (wm8903->class_w_users)
				break;

			for (i = 0; i < FUNC0(wm8903->dcs_cache); i++) {
				if (!(wm8903->dcs_pending & (1 << i)))
					continue;

				val = FUNC5(component,
						   WM8903_DC_SERVO_READBACK_1 + i);
				FUNC1(component->dev, "DC servo %d: %x\n",
					3 - i, val);
				wm8903->dcs_cache[i] = val;
			}
			break;

		default:
			FUNC3("DCS mode %d delay not set\n", dcs_mode);
			break;
		}

		wm8903->dcs_pending = 0;
	}
}