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
typedef  int /*<<< orphan*/  runlist_element ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline runlist_element *FUNC7(runlist_element *rl,
		int old_size, int new_size)
{
	runlist_element *new_rl;

	old_size = FUNC1(old_size * sizeof(*rl));
	new_size = FUNC1(new_size * sizeof(*rl));
	if (old_size == new_size)
		return rl;

	new_rl = FUNC5(new_size);
	if (FUNC6(!new_rl))
		return FUNC0(-ENOMEM);

	if (FUNC2(rl != NULL)) {
		if (FUNC6(old_size > new_size))
			old_size = new_size;
		FUNC3(new_rl, rl, old_size);
		FUNC4(rl);
	}
	return new_rl;
}