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
struct oxygen {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct oxygen*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct oxygen*) ; 
 int /*<<< orphan*/ * xense_controls ; 

__attribute__((used)) static int FUNC4(struct oxygen *chip)
{
	unsigned int i;
	int err;

	for (i = 0; i < FUNC0(xense_controls); ++i) {
		err = FUNC2(chip->card,
		FUNC3(&xense_controls[i], chip));
		if (err < 0)
			return err;
	}
	err = FUNC1(chip);
	if (err < 0)
		return err;
	return 0;
}