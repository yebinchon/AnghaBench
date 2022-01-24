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
struct perf_script {int allocated; int /*<<< orphan*/  threads; int /*<<< orphan*/  cpus; TYPE_1__* session; } ;
struct evlist {int /*<<< orphan*/  core; } ;
struct TYPE_2__ {struct evlist* evlist; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct evlist*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct perf_script *script)
{
	struct evlist *evlist = script->session->evlist;

	if (!script->cpus || !script->threads)
		return 0;

	if (FUNC0(script->allocated, "stats double allocation\n"))
		return -EINVAL;

	FUNC2(&evlist->core, script->cpus, script->threads);

	if (FUNC1(evlist, true))
		return -ENOMEM;

	script->allocated = true;
	return 0;
}