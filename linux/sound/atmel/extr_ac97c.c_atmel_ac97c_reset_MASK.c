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
struct atmel_ac97c {int /*<<< orphan*/  reset_pin; } ;

/* Variables and functions */
 int AC97C_MR_ENA ; 
 int AC97C_MR_WRST ; 
 int /*<<< orphan*/  CAMR ; 
 int /*<<< orphan*/  COMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MR ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_ac97c*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct atmel_ac97c *chip)
{
	FUNC1(chip, MR,   0);
	FUNC1(chip, MR,   AC97C_MR_ENA);
	FUNC1(chip, CAMR, 0);
	FUNC1(chip, COMR, 0);

	if (!FUNC0(chip->reset_pin)) {
		FUNC2(chip->reset_pin, 0);
		/* AC97 v2.2 specifications says minimum 1 us. */
		FUNC3(2);
		FUNC2(chip->reset_pin, 1);
	} else {
		FUNC1(chip, MR, AC97C_MR_WRST | AC97C_MR_ENA);
		FUNC3(2);
		FUNC1(chip, MR, AC97C_MR_ENA);
	}
}