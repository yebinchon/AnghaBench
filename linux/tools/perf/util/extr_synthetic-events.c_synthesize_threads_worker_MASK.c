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
struct synthesize_threads_arg {int /*<<< orphan*/  num; int /*<<< orphan*/  start; int /*<<< orphan*/  dirent; int /*<<< orphan*/  mmap_data; int /*<<< orphan*/  machine; int /*<<< orphan*/  process; int /*<<< orphan*/  tool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC1(void *arg)
{
	struct synthesize_threads_arg *args = arg;

	FUNC0(args->tool, args->process,
					 args->machine, args->mmap_data,
					 args->dirent,
					 args->start, args->num);
	return NULL;
}