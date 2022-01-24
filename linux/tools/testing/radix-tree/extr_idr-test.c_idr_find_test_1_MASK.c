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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  find_idr ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  idr_throbber ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int) ; 

void FUNC9(int anchor_id, int throbber_id)
{
	pthread_t throbber;
	time_t start = FUNC7(NULL);

	FUNC5(&throbber, NULL, idr_throbber, &throbber_id);

	FUNC0(FUNC1(&find_idr, FUNC8(anchor_id), anchor_id,
				anchor_id + 1, GFP_KERNEL) != anchor_id);

	do {
		int id = 0;
		void *entry = FUNC2(&find_idr, &id);
		FUNC0(entry != FUNC8(id));
	} while (FUNC7(NULL) < start + 11);

	FUNC6(throbber, NULL);

	FUNC4(&find_idr, anchor_id);
	FUNC0(!FUNC3(&find_idr));
}