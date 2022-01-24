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
struct worker_pool {int dummy; } ;
struct worker {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 struct worker* FUNC0 (struct worker_pool*) ; 
 scalar_t__ FUNC1 (struct worker*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct worker_pool *pool)
{
	struct worker *worker = FUNC0(pool);

	if (FUNC1(worker))
		FUNC2(worker->task);
}