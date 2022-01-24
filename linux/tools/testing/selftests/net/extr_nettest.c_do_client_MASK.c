#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int sin6_family; int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_addr; void* sin6_port; } ;
struct sockaddr_in {int sin_family; int /*<<< orphan*/  sin_addr; void* sin_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  in6; int /*<<< orphan*/  in; } ;
struct sock_args {int version; scalar_t__ type; scalar_t__ bind_test_only; scalar_t__ has_grp; int /*<<< orphan*/  scope_id; TYPE_1__ remote_addr; int /*<<< orphan*/  port; int /*<<< orphan*/  grp; int /*<<< orphan*/  has_remote_ip; } ;
typedef  int /*<<< orphan*/  sin6 ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,int,struct sock_args*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,void*,int,struct sock_args*) ; 
 int FUNC5 (struct sock_args*) ; 
 int FUNC6 (int,struct sock_args*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(struct sock_args *args)
{
	struct sockaddr_in sin = {
		.sin_family = AF_INET,
	};
	struct sockaddr_in6 sin6 = {
		.sin6_family = AF_INET6,
	};
	void *addr;
	int alen;
	int rc = 0;
	int sd;

	if (!args->has_remote_ip && !args->has_grp) {
		FUNC2(stderr, "remote IP or multicast group not given\n");
		return 1;
	}

	switch (args->version) {
	case AF_INET:
		sin.sin_port = FUNC3(args->port);
		if (args->has_grp)
			sin.sin_addr = args->grp;
		else
			sin.sin_addr = args->remote_addr.in;
		addr = &sin;
		alen = sizeof(sin);
		break;
	case AF_INET6:
		sin6.sin6_port = FUNC3(args->port);
		sin6.sin6_addr = args->remote_addr.in6;
		sin6.sin6_scope_id = args->scope_id;
		addr = &sin6;
		alen = sizeof(sin6);
		break;
	}

	if (args->has_grp)
		sd = FUNC5(args);
	else
		sd = FUNC1(addr, alen, args);

	if (sd < 0)
		return -sd;

	if (args->bind_test_only)
		goto out;

	if (args->type == SOCK_STREAM) {
		rc = FUNC6(sd, args);
		if (rc != 0)
			goto out;
	}

	rc = FUNC4(1, sd, addr, alen, args);

out:
	FUNC0(sd);

	return rc;
}