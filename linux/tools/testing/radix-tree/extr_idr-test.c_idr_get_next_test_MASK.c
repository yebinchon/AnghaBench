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
struct item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  idr ; 
 int FUNC2 (int /*<<< orphan*/ *,struct item*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct item* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  item_idr_free ; 

void FUNC8(int base)
{
	unsigned long i;
	int nextid;
	FUNC0(idr);
	FUNC6(&idr, base);

	int indices[] = {4, 7, 9, 15, 65, 128, 1000, 99999, 0};

	for(i = 0; indices[i]; i++) {
		struct item *item = FUNC7(indices[i], 0);
		FUNC1(FUNC2(&idr, item, indices[i], indices[i+1],
				 GFP_KERNEL) == indices[i]);
	}

	for(i = 0, nextid = 0; indices[i]; i++) {
		FUNC5(&idr, &nextid);
		FUNC1(nextid == indices[i]);
		nextid++;
	}

	FUNC4(&idr, item_idr_free, &idr);
	FUNC3(&idr);
}