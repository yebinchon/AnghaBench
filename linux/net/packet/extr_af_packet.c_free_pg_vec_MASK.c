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
struct pgv {int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pgv*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pgv *pg_vec, unsigned int order,
			unsigned int len)
{
	int i;

	for (i = 0; i < len; i++) {
		if (FUNC3(pg_vec[i].buffer)) {
			if (FUNC1(pg_vec[i].buffer))
				FUNC4(pg_vec[i].buffer);
			else
				FUNC0((unsigned long)pg_vec[i].buffer,
					   order);
			pg_vec[i].buffer = NULL;
		}
	}
	FUNC2(pg_vec);
}