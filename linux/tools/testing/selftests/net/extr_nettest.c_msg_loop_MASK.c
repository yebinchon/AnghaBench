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
struct timeval {int tv_sec; } ;
struct sock_args {scalar_t__ type; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ errno ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ interactive ; 
 int iter ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ msg ; 
 int /*<<< orphan*/  msglen ; 
 int prog_timeout ; 
 int quiet ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC9 (int,void*,int /*<<< orphan*/ ,struct sock_args*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,struct sock_args*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC12 (int,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static int FUNC14(int client, int sd, void *addr, socklen_t alen,
		    struct sock_args *args)
{
	struct timeval timeout = { .tv_sec = prog_timeout }, *ptval = NULL;
	fd_set rfds;
	int nfds;
	int rc;

	if (args->type != SOCK_STREAM)
		FUNC10(sd, args->version);

	if (msg) {
		msglen = FUNC13(msg);

		/* client sends first message */
		if (client) {
			if (FUNC9(sd, addr, alen, args))
				return 1;
		}
		if (!interactive) {
			ptval = &timeout;
			if (!prog_timeout)
				timeout.tv_sec = 5;
		}
	}

	nfds = interactive ? FUNC3(FUNC4(stdin), sd)  + 1 : sd + 1;
	while (1) {
		FUNC2(&rfds);
		FUNC1(sd, &rfds);
		if (interactive)
			FUNC1(FUNC4(stdin), &rfds);

		rc = FUNC8(nfds, &rfds, NULL, NULL, ptval);
		if (rc < 0) {
			if (errno == EINTR)
				continue;

			rc = 1;
			FUNC5("select failed");
			break;
		} else if (rc == 0) {
			FUNC6("Timed out waiting for response\n");
			rc = 2;
			break;
		}

		if (FUNC0(sd, &rfds)) {
			rc = FUNC11(sd, args);
			if (rc < 0) {
				rc = 1;
				break;
			}
			if (rc == 0)
				break;
		}

		rc = 0;

		if (FUNC0(FUNC4(stdin), &rfds)) {
			if (FUNC12(sd, args->type, addr, alen) <= 0)
				break;
		}

		if (interactive)
			continue;

		if (iter != -1) {
			--iter;
			if (iter == 0)
				break;
		}

		FUNC7("Going into quiet mode\n");
		quiet = 1;

		if (client) {
			if (FUNC9(sd, addr, alen, args)) {
				rc = 1;
				break;
			}
		}
	}

	return rc;
}