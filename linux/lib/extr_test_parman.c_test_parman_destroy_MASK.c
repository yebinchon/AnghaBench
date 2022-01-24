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
struct test_parman {int /*<<< orphan*/  parman; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct test_parman*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct test_parman*) ; 
 int /*<<< orphan*/  FUNC3 (struct test_parman*) ; 
 int /*<<< orphan*/  FUNC4 (struct test_parman*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct test_parman *test_parman)
{
	FUNC2(test_parman);
	FUNC3(test_parman);
	FUNC1(test_parman->parman);
	FUNC4(test_parman, 0);
	FUNC0(test_parman);
}