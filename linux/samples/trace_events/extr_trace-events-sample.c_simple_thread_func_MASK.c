#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cpus_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/ * random_strings ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void FUNC7(int cnt)
{
	int array[6];
	int len = cnt % 5;
	int i;

	FUNC1(TASK_INTERRUPTIBLE);
	FUNC0(HZ);

	for (i = 0; i < len; i++)
		array[i] = i + 1;
	array[i] = 0;

	/* Silly tracepoints */
	FUNC2("hello", cnt, array, random_strings[len],
		      current->cpus_ptr);

	FUNC6("HELLO", cnt);

	FUNC3("Some times print", cnt);

	FUNC4("prints other times", cnt);

	FUNC5("I have to be different", cnt);
}