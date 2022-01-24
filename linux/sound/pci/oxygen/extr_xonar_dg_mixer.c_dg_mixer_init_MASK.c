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
 int /*<<< orphan*/ * dg_controls ; 
 int /*<<< orphan*/  FUNC1 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC2 (struct oxygen*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxygen*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct oxygen*) ; 

__attribute__((used)) static int FUNC6(struct oxygen *chip)
{
	unsigned int i;
	int err;

	FUNC2(chip);
	FUNC1(chip);
	FUNC3(chip);

	for (i = 0; i < FUNC0(dg_controls); ++i) {
		err = FUNC4(chip->card,
				  FUNC5(&dg_controls[i], chip));
		if (err < 0)
			return err;
	}

	return 0;
}