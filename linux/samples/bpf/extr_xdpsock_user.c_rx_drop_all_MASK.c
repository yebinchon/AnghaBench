#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  fds ;
struct TYPE_3__ {int /*<<< orphan*/  xsk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SOCKS ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (struct pollfd*,int /*<<< orphan*/ ,int) ; 
 int num_socks ; 
 scalar_t__ opt_poll ; 
 int /*<<< orphan*/  opt_timeout ; 
 int FUNC1 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct pollfd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__** xsks ; 

__attribute__((used)) static void FUNC4(void)
{
	struct pollfd fds[MAX_SOCKS + 1];
	int i, ret;

	FUNC0(fds, 0, sizeof(fds));

	for (i = 0; i < num_socks; i++) {
		fds[i].fd = FUNC3(xsks[i]->xsk);
		fds[i].events = POLLIN;
	}

	for (;;) {
		if (opt_poll) {
			ret = FUNC1(fds, num_socks, opt_timeout);
			if (ret <= 0)
				continue;
		}

		for (i = 0; i < num_socks; i++)
			FUNC2(xsks[i], fds);
	}
}