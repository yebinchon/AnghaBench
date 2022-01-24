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
typedef  int u32 ;
struct hdac_bus {scalar_t__ mlcap; } ;
struct azx {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ AZX_ML_BASE ; 
 scalar_t__ AZX_REG_ML_LCAP ; 
 struct hdac_bus* FUNC1 (struct azx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct azx *chip)
{
	struct hdac_bus *bus = FUNC1(chip);
	static int preferred_bits[] = { 2, 3, 1, 4, 5 };
	u32 val, t;
	int i;

	val = FUNC3(bus->mlcap + AZX_ML_BASE + AZX_REG_ML_LCAP);

	for (i = 0; i < FUNC0(preferred_bits); i++) {
		t = preferred_bits[i];
		if (val & (1 << t))
			return t;
	}

	FUNC2(chip->card->dev, "set audio clock frequency to 6MHz");
	return 0;
}