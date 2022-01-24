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
struct datarec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAIL_MEM ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct datarec* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct datarec*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct datarec *FUNC5(void)
{
	unsigned int nr_cpus = FUNC0();
	struct datarec *array;
	size_t size;

	size = sizeof(struct datarec) * nr_cpus;
	array = FUNC3(size);
	FUNC4(array, 0, size);
	if (!array) {
		FUNC2(stderr, "Mem alloc error (nr_cpus:%u)\n", nr_cpus);
		FUNC1(EXIT_FAIL_MEM);
	}
	return array;
}