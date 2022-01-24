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
struct mutex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct mutex*) ; 
 int FUNC2 (struct mutex*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct mutex*,struct mutex*) ; 

__attribute__((used)) static int FUNC5(struct mutex *m1, struct mutex *m2)
{
	int err;

	if (m2 > m1)
		FUNC4(m1, m2);

	err = FUNC1(m1);
	if (!err && FUNC0(m1 != m2)) {
		err = FUNC2(m2, SINGLE_DEPTH_NESTING);
		if (err)
			FUNC3(m1);
	}

	return err;
}