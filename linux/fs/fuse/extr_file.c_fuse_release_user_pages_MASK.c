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
struct fuse_args_pages {unsigned int num_pages; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fuse_args_pages *ap,
				    bool should_dirty)
{
	unsigned int i;

	for (i = 0; i < ap->num_pages; i++) {
		if (should_dirty)
			FUNC1(ap->pages[i]);
		FUNC0(ap->pages[i]);
	}
}