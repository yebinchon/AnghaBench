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
 int /*<<< orphan*/  bpf_map_get_fd_by_id ; 
 int FUNC0 (int,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int argc, char **argv)
{
	int err;

	err = FUNC0(argc, argv, bpf_map_get_fd_by_id);
	if (!err && json_output)
		FUNC1(json_wtr);
	return err;
}