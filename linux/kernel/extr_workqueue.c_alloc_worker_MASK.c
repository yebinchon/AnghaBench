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
struct worker {int /*<<< orphan*/  flags; int /*<<< orphan*/  node; int /*<<< orphan*/  scheduled; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WORKER_PREP ; 
 struct worker* FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct worker *FUNC2(int node)
{
	struct worker *worker;

	worker = FUNC1(sizeof(*worker), GFP_KERNEL, node);
	if (worker) {
		FUNC0(&worker->entry);
		FUNC0(&worker->scheduled);
		FUNC0(&worker->node);
		/* on creation a worker is in !idle && prep state */
		worker->flags = WORKER_PREP;
	}
	return worker;
}