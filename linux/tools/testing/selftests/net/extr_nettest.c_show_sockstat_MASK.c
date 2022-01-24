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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock_args {int /*<<< orphan*/  expected_raddr; scalar_t__ has_expected_raddr; int /*<<< orphan*/  expected_laddr; scalar_t__ has_expected_laddr; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  local_addr ;

/* Variables and functions */
 int FUNC0 (struct sockaddr*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ server_mode ; 

__attribute__((used)) static int FUNC5(int sd, struct sock_args *args)
{
	struct sockaddr_in6 local_addr, remote_addr;
	socklen_t alen = sizeof(local_addr);
	struct sockaddr *sa;
	const char *desc;
	int rc = 0;

	desc = server_mode ? "server local:" : "client local:";
	sa = (struct sockaddr *) &local_addr;
	if (FUNC2(sd, sa, &alen) == 0) {
		FUNC3(desc, sa);

		if (args->has_expected_laddr) {
			rc = FUNC0(sa, &args->expected_laddr,
						 "local");
		}
	} else {
		FUNC4("getsockname failed");
	}

	sa = (struct sockaddr *) &remote_addr;
	desc = server_mode ? "server peer:" : "client peer:";
	if (FUNC1(sd, sa, &alen) == 0) {
		FUNC3(desc, sa);

		if (args->has_expected_raddr) {
			rc |= FUNC0(sa, &args->expected_raddr,
						 "remote");
		}
	} else {
		FUNC4("getpeername failed");
	}

	return rc;
}