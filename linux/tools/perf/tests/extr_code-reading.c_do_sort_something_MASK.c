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
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  comp ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	int buf[40960], i;

	for (i = 0; i < (int)FUNC0(buf); i++)
		buf[i] = FUNC0(buf) - i - 1;

	FUNC2(buf, FUNC0(buf), sizeof(int), comp);

	for (i = 0; i < (int)FUNC0(buf); i++) {
		if (buf[i] != i) {
			FUNC1("qsort failed\n");
			break;
		}
	}
}