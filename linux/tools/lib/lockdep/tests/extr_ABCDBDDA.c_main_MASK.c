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
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	pthread_mutex_t a, b, c, d;

	FUNC2(&a, NULL);
	FUNC2(&b, NULL);
	FUNC2(&c, NULL);
	FUNC2(&d, NULL);

	FUNC0(a, b);
	FUNC0(c, d);
	FUNC0(b, d);
	FUNC0(d, a);

	FUNC1(&d);
	FUNC1(&c);
	FUNC1(&b);
	FUNC1(&a);
}