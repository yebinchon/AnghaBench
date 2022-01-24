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
struct kasan_track {scalar_t__ stack; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned int FUNC1 (scalar_t__,unsigned long**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kasan_track *track, const char *prefix)
{
	FUNC0("%s by task %u:\n", prefix, track->pid);
	if (track->stack) {
		unsigned long *entries;
		unsigned int nr_entries;

		nr_entries = FUNC1(track->stack, &entries);
		FUNC2(entries, nr_entries, 0);
	} else {
		FUNC0("(stack is not available)\n");
	}
}