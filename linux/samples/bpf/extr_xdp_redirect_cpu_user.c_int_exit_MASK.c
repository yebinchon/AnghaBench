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
 int /*<<< orphan*/  EXIT_FAIL ; 
 int /*<<< orphan*/  EXIT_OK ; 
 scalar_t__ FUNC0 (int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int ifindex ; 
 char* ifname ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ prog_id ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  xdp_flags ; 

__attribute__((used)) static void FUNC5(int sig)
{
	__u32 curr_prog_id = 0;

	if (ifindex > -1) {
		if (FUNC0(ifindex, &curr_prog_id, xdp_flags)) {
			FUNC4("bpf_get_link_xdp_id failed\n");
			FUNC2(EXIT_FAIL);
		}
		if (prog_id == curr_prog_id) {
			FUNC3(stderr,
				"Interrupted: Removing XDP program on ifindex:%d device:%s\n",
				ifindex, ifname);
			FUNC1(ifindex, -1, xdp_flags);
		} else if (!curr_prog_id) {
			FUNC4("couldn't find a prog id on a given iface\n");
		} else {
			FUNC4("program on interface changed, not removing\n");
		}
	}
	FUNC2(EXIT_OK);
}