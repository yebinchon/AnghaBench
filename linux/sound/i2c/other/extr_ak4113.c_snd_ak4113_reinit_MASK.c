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
struct ak4113 {int /*<<< orphan*/  work; int /*<<< orphan*/  wq_processing; int /*<<< orphan*/  reinit_mutex; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ak4113*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(struct ak4113 *chip)
{
	if (FUNC2(&chip->wq_processing) == 1)
		FUNC3(&chip->work);
	FUNC4(&chip->reinit_mutex);
	FUNC0(chip);
	FUNC5(&chip->reinit_mutex);
	/* bring up statistics / event queing */
	if (FUNC1(&chip->wq_processing))
		FUNC6(&chip->work, HZ / 10);
}