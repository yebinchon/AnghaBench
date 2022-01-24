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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int test_loop_count ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 void* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(void)
{
	void **ptr, **junk_ptr, *tmp;
	int junk_length;
	int rv = -1;
	int i;

	junk_length = FUNC0(FUNC1());
	junk_length *= (32 * 1024 * 1024 / PAGE_SIZE);

	ptr = FUNC3(sizeof(void *) * junk_length);
	if (!ptr)
		return rv;

	junk_ptr = FUNC3(sizeof(void *) * junk_length);
	if (!junk_ptr) {
		FUNC2(ptr);
		return rv;
	}

	for (i = 0; i < junk_length; i++) {
		ptr[i] = FUNC3(1 * PAGE_SIZE);
		junk_ptr[i] = FUNC3(1 * PAGE_SIZE);
	}

	for (i = 0; i < junk_length; i++)
		FUNC2(junk_ptr[i]);

	for (i = 0; i < test_loop_count; i++) {
		tmp = FUNC3(1 * PAGE_SIZE);

		if (!tmp)
			goto error;

		*((__u8 *)tmp) = 1;
		FUNC2(tmp);
	}

	/* Success */
	rv = 0;

error:
	for (i = 0; i < junk_length; i++)
		FUNC2(ptr[i]);

	FUNC2(ptr);
	FUNC2(junk_ptr);

	return rv;
}