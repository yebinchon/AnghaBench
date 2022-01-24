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
struct wm5100_priv {int jack_detecting; int /*<<< orphan*/  regmap; int /*<<< orphan*/  jack; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  WM5100_ACCDET_RATE_MASK ; 
 int WM5100_ACCDET_RATE_SHIFT ; 
 int /*<<< orphan*/  WM5100_MIC_DETECT_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wm5100_priv *wm5100)
{
	FUNC0(wm5100->dev, "Headphone detected\n");
	wm5100->jack_detecting = false;
	FUNC2(wm5100->jack, SND_JACK_HEADPHONE,
			    SND_JACK_HEADPHONE);

	/* Increase the detection rate a bit for responsiveness. */
	FUNC1(wm5100->regmap, WM5100_MIC_DETECT_1,
			   WM5100_ACCDET_RATE_MASK,
			   7 << WM5100_ACCDET_RATE_SHIFT);
}