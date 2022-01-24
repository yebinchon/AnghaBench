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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockmap_options {scalar_t__ verbose; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int c1 ; 
 int c2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int p1 ; 
 int p2 ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ running ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC10 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC12(int rate, struct sockmap_options *opt)
{
	struct timeval timeout;
	char buf[1024] = {0};
	int sc;

	timeout.tv_sec = 10;
	timeout.tv_usec = 0;

	/* Ping/Pong data from client to server */
	sc = FUNC10(c1, buf, sizeof(buf), 0);
	if (sc < 0) {
		FUNC6("send failed()\n");
		return sc;
	}

	do {
		int s, rc, i, max_fd = p2;
		fd_set w;

		/* FD sets */
		FUNC2(&w);
		FUNC1(c1, &w);
		FUNC1(c2, &w);
		FUNC1(p1, &w);
		FUNC1(p2, &w);

		s = FUNC9(max_fd + 1, &w, NULL, NULL, &timeout);
		if (s == -1) {
			FUNC6("select()");
			break;
		} else if (!s) {
			FUNC5(stderr, "unexpected timeout\n");
			break;
		}

		for (i = 0; i <= max_fd && s > 0; ++i) {
			if (!FUNC0(i, &w))
				continue;

			s--;

			rc = FUNC8(i, buf, sizeof(buf), 0);
			if (rc < 0) {
				if (errno != EWOULDBLOCK) {
					FUNC6("recv failed()\n");
					return rc;
				}
			}

			if (rc == 0) {
				FUNC3(i);
				break;
			}

			sc = FUNC10(i, buf, rc, 0);
			if (sc < 0) {
				FUNC6("send failed()\n");
				return sc;
			}
		}

		if (rate)
			FUNC11(rate);

		if (opt->verbose) {
			FUNC7(".");
			FUNC4(stdout);

		}
	} while (running);

	return 0;
}