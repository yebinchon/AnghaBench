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
struct thread {int /*<<< orphan*/  mg; } ;
struct map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct map*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (int /*<<< orphan*/ ,struct map*,int /*<<< orphan*/ *) ; 

int FUNC3(struct thread *thread, struct map *map)
{
	int ret;

	ret = FUNC2(thread->mg, map, NULL);
	if (ret)
		return ret;

	FUNC0(thread->mg, map, stderr);
	FUNC1(thread->mg, map);

	return 0;
}