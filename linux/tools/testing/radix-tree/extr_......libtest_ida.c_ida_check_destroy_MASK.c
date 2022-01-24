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
struct ida {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ida*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ida*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ida*) ; 
 int /*<<< orphan*/  FUNC3 (struct ida*) ; 

__attribute__((used)) static void FUNC4(struct ida *ida)
{
	/* Destroy an already-empty IDA */
	FUNC0(ida, !FUNC3(ida));
	FUNC2(ida);
	FUNC0(ida, !FUNC3(ida));

	FUNC1(ida, 0);
	FUNC1(ida, 1);
	FUNC1(ida, 1023);
	FUNC1(ida, 1024);
	FUNC1(ida, 12345678);
}