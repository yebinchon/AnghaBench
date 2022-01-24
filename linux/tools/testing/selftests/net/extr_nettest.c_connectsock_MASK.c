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
struct sock_args {scalar_t__ type; scalar_t__ bind_test_only; int /*<<< orphan*/  password; scalar_t__ has_local_ip; int /*<<< orphan*/  version; int /*<<< orphan*/  ifindex; scalar_t__ use_setsockopt; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 long O_NONBLOCK ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sock_args*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 long FUNC4 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(void *addr, socklen_t alen, struct sock_args *args)
{
	int sd, rc = -1;
	long flags;

	sd = FUNC8(args->version, args->type, args->protocol);
	if (sd < 0) {
		FUNC5("Failed to create socket");
		return -1;
	}

	flags = FUNC4(sd, F_GETFL);
	if ((flags < 0) || (FUNC4(sd, F_SETFL, flags|O_NONBLOCK) < 0)) {
		FUNC5("Failed to set non-blocking option");
		goto err;
	}

	if (FUNC6(sd) != 0)
		goto err;

	if (args->dev && FUNC1(sd, args->dev) != 0)
		goto err;
	else if (args->use_setsockopt &&
		 FUNC7(sd, args->ifindex, args->version))
		goto err;

	if (args->has_local_ip && FUNC0(sd, args))
		goto err;

	if (args->type != SOCK_STREAM)
		goto out;

	if (args->password && FUNC9(sd, addr, alen, args->password))
		goto err;

	if (args->bind_test_only)
		goto out;

	if (FUNC3(sd, addr, alen) < 0) {
		if (errno != EINPROGRESS) {
			FUNC5("Failed to connect to remote host");
			rc = -1;
			goto err;
		}
		rc = FUNC10(sd);
		if (rc < 0)
			goto err;
	}
out:
	return sd;

err:
	FUNC2(sd);
	return rc;
}