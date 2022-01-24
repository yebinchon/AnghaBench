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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opt_ifindex ; 
 int /*<<< orphan*/  opt_xdp_flags ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ prog_id ; 

__attribute__((used)) static void FUNC4(void)
{
	__u32 curr_prog_id = 0;

	if (FUNC0(opt_ifindex, &curr_prog_id, opt_xdp_flags)) {
		FUNC3("bpf_get_link_xdp_id failed\n");
		FUNC2(EXIT_FAILURE);
	}
	if (prog_id == curr_prog_id)
		FUNC1(opt_ifindex, -1, opt_xdp_flags);
	else if (!curr_prog_id)
		FUNC3("couldn't find a prog id on a given interface\n");
	else
		FUNC3("program on interface changed, not removing\n");
}