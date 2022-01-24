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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ dummy_prog_id ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ifindex_in ; 
 int /*<<< orphan*/  ifindex_out ; 
 scalar_t__ ifindex_out_xdp_dummy_attached ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ prog_id ; 
 int /*<<< orphan*/  xdp_flags ; 

__attribute__((used)) static void FUNC4(int sig)
{
	__u32 curr_prog_id = 0;

	if (FUNC0(ifindex_in, &curr_prog_id, xdp_flags)) {
		FUNC3("bpf_get_link_xdp_id failed\n");
		FUNC2(1);
	}
	if (prog_id == curr_prog_id)
		FUNC1(ifindex_in, -1, xdp_flags);
	else if (!curr_prog_id)
		FUNC3("couldn't find a prog id on iface IN\n");
	else
		FUNC3("program on iface IN changed, not removing\n");

	if (ifindex_out_xdp_dummy_attached) {
		curr_prog_id = 0;
		if (FUNC0(ifindex_out, &curr_prog_id,
					xdp_flags)) {
			FUNC3("bpf_get_link_xdp_id failed\n");
			FUNC2(1);
		}
		if (dummy_prog_id == curr_prog_id)
			FUNC1(ifindex_out, -1, xdp_flags);
		else if (!curr_prog_id)
			FUNC3("couldn't find a prog id on iface OUT\n");
		else
			FUNC3("program on iface OUT changed, not removing\n");
	}
	FUNC2(0);
}