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
typedef  int /*<<< orphan*/  i ;
typedef  int __u8 ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int) ; 
 int test_loop_count ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned int n;
	void *p;
	int i;

	for (i = 0; i < test_loop_count; i++) {
		FUNC0(&n, sizeof(i));
		n = (n % 100) + 1;

		p = FUNC2(n * PAGE_SIZE);

		if (!p)
			return -1;

		*((__u8 *)p) = 1;
		FUNC1(p);
	}

	return 0;
}