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
struct mbox_request {scalar_t__ is_set; } ;
struct mbox_reply {int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int /*<<< orphan*/  debug_fd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbox_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbox_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct mbox_request*,int) ; 
 int FUNC4 (int,struct mbox_reply*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	while (1) {
		struct mbox_request req;
		struct mbox_reply reply;
		int n;

		n = FUNC3(0, &req, sizeof(req));
		if (n != sizeof(req)) {
			FUNC0(debug_fd, "invalid request %d\n", n);
			return;
		}

		reply.status = req.is_set ?
			FUNC2(&req) :
			FUNC1(&req);

		n = FUNC4(1, &reply, sizeof(reply));
		if (n != sizeof(reply)) {
			FUNC0(debug_fd, "reply failed %d\n", n);
			return;
		}
	}
}