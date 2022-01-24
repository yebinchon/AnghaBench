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
struct sock_args {scalar_t__ type; scalar_t__ bind_test_only; int /*<<< orphan*/  version; int /*<<< orphan*/  ifindex; scalar_t__ use_setsockopt; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 long FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 long O_NONBLOCK ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sock_args*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 long FUNC3 (int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sock_args *args)
{
	long flags;
	int sd;

	sd = FUNC9(args->version, args->type, args->protocol);
	if (sd < 0) {
		FUNC5("Error opening socket");
		return  -1;
	}

	if (FUNC6(sd) != 0)
		goto err;

	if (FUNC7(sd) != 0)
		goto err;

	if (args->dev && FUNC1(sd, args->dev) != 0)
		goto err;
	else if (args->use_setsockopt &&
		 FUNC8(sd, args->ifindex, args->version))
		goto err;

	if (FUNC0(sd, args))
		goto err;

	if (args->bind_test_only)
		goto out;

	if (args->type == SOCK_STREAM && FUNC4(sd, 1) < 0) {
		FUNC5("listen failed");
		goto err;
	}

	flags = FUNC3(sd, F_GETFL);
	if ((flags < 0) || (FUNC3(sd, F_SETFL, flags|O_NONBLOCK) < 0)) {
		FUNC5("Failed to set non-blocking option");
		goto err;
	}

	if (FUNC3(sd, F_SETFD, FD_CLOEXEC) < 0)
		FUNC5("Failed to set close-on-exec flag");

out:
	return sd;

err:
	FUNC2(sd);
	return -1;
}