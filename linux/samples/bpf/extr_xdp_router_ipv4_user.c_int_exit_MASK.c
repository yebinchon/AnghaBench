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
 scalar_t__ FUNC0 (int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  flags ; 
 int* ifindex_list ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__* prog_id_list ; 
 int total_ifindex ; 

__attribute__((used)) static void FUNC4(int sig)
{
	__u32 prog_id = 0;
	int i = 0;

	for (i = 0; i < total_ifindex; i++) {
		if (FUNC0(ifindex_list[i], &prog_id, flags)) {
			FUNC3("bpf_get_link_xdp_id on iface %d failed\n",
			       ifindex_list[i]);
			FUNC2(1);
		}
		if (prog_id_list[i] == prog_id)
			FUNC1(ifindex_list[i], -1, flags);
		else if (!prog_id)
			FUNC3("couldn't find a prog id on iface %d\n",
			       ifindex_list[i]);
		else
			FUNC3("program on iface %d changed, not removing\n",
			       ifindex_list[i]);
		prog_id = 0;
	}
	FUNC2(0);
}