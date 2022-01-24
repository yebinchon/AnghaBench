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

/* Variables and functions */
 unsigned int FUNC0 (int const*) ; 
 int INVALID_IRQ ; 
 int MEDIA_FX ; 

__attribute__((used)) static unsigned FUNC1(int sscape_type, int irq)
{
	static const int valid_irq[] = { 9, 5, 7, 10 };
	static const int old_irq[] = { 9, 7, 5, 15 };
	unsigned cfg;

	if (sscape_type == MEDIA_FX) {
		for (cfg = 0; cfg < FUNC0(old_irq); ++cfg)
			if (irq == old_irq[cfg])
				return cfg;
	} else {
		for (cfg = 0; cfg < FUNC0(valid_irq); ++cfg)
			if (irq == valid_irq[cfg])
				return cfg;
	}

	return INVALID_IRQ;
}