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
struct pci_dev {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/  dev; struct drm_audio_component* audio_component; } ;
struct drm_audio_component {int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_cdclk_freq ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  HSW_EM4 ; 
 int /*<<< orphan*/  HSW_EM5 ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_bus*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct hdac_bus *bus)
{
	struct drm_audio_component *acomp = bus->audio_component;
	struct pci_dev *pci = FUNC3(bus->dev);
	int cdclk_freq;
	unsigned int bclk_m, bclk_n;

	if (!acomp || !acomp->ops || !acomp->ops->get_cdclk_freq)
		return; /* only for i915 binding */
	if (!FUNC0(pci))
		return; /* only HSW/BDW */

	cdclk_freq = acomp->ops->get_cdclk_freq(acomp->dev);
	switch (cdclk_freq) {
	case 337500:
		bclk_m = 16;
		bclk_n = 225;
		break;

	case 450000:
	default: /* default CDCLK 450MHz */
		bclk_m = 4;
		bclk_n = 75;
		break;

	case 540000:
		bclk_m = 4;
		bclk_n = 90;
		break;

	case 675000:
		bclk_m = 8;
		bclk_n = 225;
		break;
	}

	FUNC1(bus, HSW_EM4, bclk_m);
	FUNC1(bus, HSW_EM5, bclk_n);
}