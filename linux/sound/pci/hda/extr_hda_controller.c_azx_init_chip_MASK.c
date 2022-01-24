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
struct azx {int driver_caps; } ;

/* Variables and functions */
 int AZX_DCAPS_CTX_WORKAROUND ; 
 int /*<<< orphan*/  RINTCNT ; 
 int /*<<< orphan*/  FUNC0 (struct azx*) ; 
 int /*<<< orphan*/  FUNC1 (struct azx*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct azx *chip, bool full_reset)
{
	if (FUNC2(FUNC0(chip), full_reset)) {
		/* correct RINTCNT for CXT */
		if (chip->driver_caps & AZX_DCAPS_CTX_WORKAROUND)
			FUNC1(chip, RINTCNT, 0xc0);
	}
}