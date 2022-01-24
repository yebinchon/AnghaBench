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
typedef  int u16 ;
struct wm8994_priv {int mic_detecting; int jack_mic; TYPE_1__* micdet; int /*<<< orphan*/  open_circuit_work; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  SND_JACK_HEADSET ; 
 int WM8958_MICD_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wm8994_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC7(void *data, u16 status)
{
	struct snd_soc_component *component = data;
	struct wm8994_priv *wm8994 = FUNC3(component);

	/* Either nothing present or just starting detection */
	if (!(status & WM8958_MICD_STS)) {
		/* If nothing present then clear our statuses */
		FUNC0(component->dev, "Detected open circuit\n");

		FUNC2(system_power_efficient_wq,
				   &wm8994->open_circuit_work,
				   FUNC1(2500));
		return;
	}

	/* If the measurement is showing a high impedence we've got a
	 * microphone.
	 */
	if (status & 0x600) {
		FUNC0(component->dev, "Detected microphone\n");

		wm8994->mic_detecting = false;
		wm8994->jack_mic = true;

		FUNC6(component);

		FUNC4(wm8994->micdet[0].jack, SND_JACK_HEADSET,
				    SND_JACK_HEADSET);
	}


	if (status & 0xfc) {
		FUNC0(component->dev, "Detected headphone\n");
		wm8994->mic_detecting = false;

		FUNC6(component);

		/* If we have jackdet that will detect removal */
		FUNC5(component);

		FUNC4(wm8994->micdet[0].jack, SND_JACK_HEADPHONE,
				    SND_JACK_HEADSET);
	}
}