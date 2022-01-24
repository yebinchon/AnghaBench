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
typedef  int __u8 ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int test_loop_count ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void)
{
	void *ptr_1, *ptr_2;
	void **ptr;
	int rv = -1;
	int i;

	ptr = FUNC1(sizeof(void *) * 15000);
	if (!ptr)
		return rv;

	for (i = 0; i < 15000; i++)
		ptr[i] = FUNC1(1 * PAGE_SIZE);

	for (i = 0; i < test_loop_count; i++) {
		ptr_1 = FUNC1(100 * PAGE_SIZE);
		if (!ptr_1)
			goto leave;

		ptr_2 = FUNC1(1 * PAGE_SIZE);
		if (!ptr_2) {
			FUNC0(ptr_1);
			goto leave;
		}

		*((__u8 *)ptr_1) = 0;
		*((__u8 *)ptr_2) = 1;

		FUNC0(ptr_1);
		FUNC0(ptr_2);
	}

	/*  Success */
	rv = 0;

leave:
	for (i = 0; i < 15000; i++)
		FUNC0(ptr[i]);

	FUNC0(ptr);
	return rv;
}