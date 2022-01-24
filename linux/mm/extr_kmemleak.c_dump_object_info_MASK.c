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
struct kmemleak_object {int /*<<< orphan*/  trace_len; int /*<<< orphan*/  trace; int /*<<< orphan*/  checksum; int /*<<< orphan*/  flags; int /*<<< orphan*/  count; int /*<<< orphan*/  min_count; int /*<<< orphan*/  jiffies; int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; int /*<<< orphan*/  size; int /*<<< orphan*/  pointer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct kmemleak_object *object)
{
	FUNC0("Object 0x%08lx (size %zu):\n",
		  object->pointer, object->size);
	FUNC0("  comm \"%s\", pid %d, jiffies %lu\n",
		  object->comm, object->pid, object->jiffies);
	FUNC0("  min_count = %d\n", object->min_count);
	FUNC0("  count = %d\n", object->count);
	FUNC0("  flags = 0x%x\n", object->flags);
	FUNC0("  checksum = %u\n", object->checksum);
	FUNC0("  backtrace:\n");
	FUNC1(object->trace, object->trace_len, 4);
}