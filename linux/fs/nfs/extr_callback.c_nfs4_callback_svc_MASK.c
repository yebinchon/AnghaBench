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
struct svc_rqst {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_rqst*) ; 
 int FUNC7 (struct svc_rqst*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void *vrqstp)
{
	int err;
	struct svc_rqst *rqstp = vrqstp;

	FUNC3();

	while (!FUNC1(NULL)) {

		if (FUNC4(current))
			FUNC0(current);
		/*
		 * Listen for a request on the socket
		 */
		err = FUNC7(rqstp, MAX_SCHEDULE_TIMEOUT);
		if (err == -EAGAIN || err == -EINTR)
			continue;
		FUNC6(rqstp);
	}
	FUNC5(rqstp);
	FUNC2(0);
	return 0;
}