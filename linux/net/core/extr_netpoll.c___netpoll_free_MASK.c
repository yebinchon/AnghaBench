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
struct netpoll {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct netpoll*) ; 
 int /*<<< orphan*/  FUNC2 (struct netpoll*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct netpoll *np)
{
	FUNC0();

	/* Wait for transmitting packets to finish before freeing. */
	FUNC3();
	FUNC1(np);
	FUNC2(np);
}