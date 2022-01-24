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
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int,int,int*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int,int,int) ; 

__attribute__((used)) static void FUNC4(int fam_send, int fam_rcv, int proto,
			 const char *addr_str)
{
	/* Below we test that a socket listening on a specific address
	 * is always selected in preference over a socket listening
	 * on addr_any. Bugs where this is not the case often result
	 * in sockets created first or last to get picked. So below
	 * we make sure that there are always addr_any sockets created
	 * before and after a specific socket is created.
	 */
	int rcv_fds[10], i;

	FUNC0(AF_INET, proto, rcv_fds, 2, NULL);
	FUNC0(AF_INET6, proto, rcv_fds + 2, 2, NULL);
	FUNC0(fam_rcv, proto, rcv_fds + 4, 1, addr_str);
	FUNC0(AF_INET, proto, rcv_fds + 5, 2, NULL);
	FUNC0(AF_INET6, proto, rcv_fds + 7, 2, NULL);
	FUNC3(rcv_fds, 9, fam_send, proto, rcv_fds[4]);
	for (i = 0; i < 9; ++i)
		FUNC1(rcv_fds[i]);
	FUNC2(stderr, "pass\n");
}