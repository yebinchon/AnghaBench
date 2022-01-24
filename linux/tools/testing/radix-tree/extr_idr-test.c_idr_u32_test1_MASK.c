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
typedef  int u32 ;
struct idr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* DUMMY_PTR ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 int FUNC1 (struct idr*,void*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct idr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct idr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct idr*) ; 
 void* FUNC5 (struct idr*,int) ; 
 int /*<<< orphan*/  idr_u32_cb ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(struct idr *idr, u32 handle)
{
	static bool warned = false;
	u32 id = handle;
	int sid = 0;
	void *ptr;

	FUNC0(FUNC1(idr, DUMMY_PTR, &id, id, GFP_KERNEL));
	FUNC0(id != handle);
	FUNC0(FUNC1(idr, DUMMY_PTR, &id, id, GFP_KERNEL) != -ENOSPC);
	FUNC0(id != handle);
	if (!warned && id > INT_MAX)
		FUNC6("vvv Ignore these warnings\n");
	ptr = FUNC3(idr, &sid);
	if (id > INT_MAX) {
		FUNC0(ptr != NULL);
		FUNC0(sid != 0);
	} else {
		FUNC0(ptr != DUMMY_PTR);
		FUNC0(sid != id);
	}
	FUNC2(idr, idr_u32_cb, NULL);
	if (!warned && id > INT_MAX) {
		FUNC6("^^^ Warnings over\n");
		warned = true;
	}
	FUNC0(FUNC5(idr, id) != DUMMY_PTR);
	FUNC0(!FUNC4(idr));
}