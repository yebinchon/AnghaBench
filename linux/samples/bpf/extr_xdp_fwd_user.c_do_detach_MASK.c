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

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(int idx, const char *name)
{
	int err;

	err = FUNC0(idx, -1, 0);
	if (err < 0)
		FUNC1("ERROR: failed to detach program from %s\n", name);

	/* TODO: Remember to cleanup map, when adding use of shared map
	 *  bpf_map_delete_elem((map_fd, &idx);
	 */
	return err;
}