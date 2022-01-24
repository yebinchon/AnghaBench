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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * DUMMY_PTR ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  idr ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC8(void)
{
	int i;
	FUNC0(idr);

	FUNC2(FUNC5(&idr));

	FUNC2(FUNC3(&idr, NULL, 0, 0, GFP_KERNEL) == 0);
	FUNC2(!FUNC5(&idr));
	FUNC6(&idr, 0);
	FUNC2(FUNC5(&idr));

	FUNC2(FUNC3(&idr, NULL, 0, 0, GFP_KERNEL) == 0);
	FUNC2(!FUNC5(&idr));
	FUNC4(&idr);
	FUNC2(FUNC5(&idr));

	for (i = 0; i < 10; i++) {
		FUNC2(FUNC3(&idr, NULL, 0, 0, GFP_KERNEL) == i);
	}

	FUNC2(FUNC7(&idr, DUMMY_PTR, 3) == NULL);
	FUNC2(FUNC7(&idr, DUMMY_PTR, 4) == NULL);
	FUNC2(FUNC7(&idr, NULL, 4) == DUMMY_PTR);
	FUNC2(FUNC7(&idr, DUMMY_PTR, 11) == FUNC1(-ENOENT));
	FUNC6(&idr, 5);
	FUNC2(FUNC3(&idr, NULL, 0, 0, GFP_KERNEL) == 5);
	FUNC6(&idr, 5);

	for (i = 0; i < 9; i++) {
		FUNC6(&idr, i);
		FUNC2(!FUNC5(&idr));
	}
	FUNC6(&idr, 8);
	FUNC2(!FUNC5(&idr));
	FUNC6(&idr, 9);
	FUNC2(FUNC5(&idr));

	FUNC2(FUNC3(&idr, NULL, 0, 0, GFP_KERNEL) == 0);
	FUNC2(FUNC7(&idr, DUMMY_PTR, 3) == FUNC1(-ENOENT));
	FUNC2(FUNC7(&idr, DUMMY_PTR, 0) == NULL);
	FUNC2(FUNC7(&idr, NULL, 0) == DUMMY_PTR);

	FUNC4(&idr);
	FUNC2(FUNC5(&idr));

	for (i = 1; i < 10; i++) {
		FUNC2(FUNC3(&idr, NULL, 1, 0, GFP_KERNEL) == i);
	}

	FUNC4(&idr);
	FUNC2(FUNC5(&idr));
}