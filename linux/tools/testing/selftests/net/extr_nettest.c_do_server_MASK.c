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
struct timeval {scalar_t__ tv_sec; } ;
struct sockaddr_in6 {int dummy; } ;
struct sock_args {scalar_t__ type; scalar_t__ password; scalar_t__ bind_test_only; scalar_t__ has_grp; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ SOCK_STREAM ; 
 int FUNC3 (int,void*,int*) ; 
 int FUNC4 (int,struct sock_args*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  interactive ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct sock_args*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,void*,int,struct sock_args*) ; 
 int FUNC10 (struct sock_args*) ; 
 scalar_t__ prog_timeout ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC12 (int,struct sock_args*) ; 
 scalar_t__ FUNC13 (int,struct sock_args*) ; 

__attribute__((used)) static int FUNC14(struct sock_args *args)
{
	struct timeval timeout = { .tv_sec = prog_timeout }, *ptval = NULL;
	unsigned char addr[sizeof(struct sockaddr_in6)] = {};
	socklen_t alen = sizeof(addr);
	int lsd, csd = -1;

	fd_set rfds;
	int rc;

	if (prog_timeout)
		ptval = &timeout;

	if (args->has_grp)
		lsd = FUNC10(args);
	else
		lsd = FUNC8(args);

	if (lsd < 0)
		return 1;

	if (args->bind_test_only) {
		FUNC5(lsd);
		return 0;
	}

	if (args->type != SOCK_STREAM) {
		rc = FUNC9(0, lsd, (void *) addr, alen, args);
		FUNC5(lsd);
		return rc;
	}

	if (args->password && FUNC13(lsd, args)) {
		FUNC5(lsd);
		return -1;
	}

	while (1) {
		FUNC7("\n");
		FUNC7("waiting for client connection.\n");
		FUNC2(&rfds);
		FUNC1(lsd, &rfds);

		rc = FUNC11(lsd+1, &rfds, NULL, NULL, ptval);
		if (rc == 0) {
			rc = 2;
			break;
		}

		if (rc < 0) {
			if (errno == EINTR)
				continue;

			FUNC6("select failed");
			break;
		}

		if (FUNC0(lsd, &rfds)) {

			csd = FUNC3(lsd, (void *) addr, &alen);
			if (csd < 0) {
				FUNC6("accept failed");
				break;
			}

			rc = FUNC12(csd, args);
			if (rc)
				break;

			rc = FUNC4(csd, args);
			if (rc)
				break;
		}

		rc = FUNC9(0, csd, (void *) addr, alen, args);
		FUNC5(csd);

		if (!interactive)
			break;
	}

	FUNC5(lsd);

	return rc;
}