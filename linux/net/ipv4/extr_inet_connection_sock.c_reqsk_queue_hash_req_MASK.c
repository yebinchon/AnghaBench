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
struct request_sock {int /*<<< orphan*/  rsk_refcnt; int /*<<< orphan*/  rsk_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_PINNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request_sock*) ; 
 int /*<<< orphan*/  reqsk_timer_handler ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct request_sock *req,
				 unsigned long timeout)
{
	FUNC5(&req->rsk_timer, reqsk_timer_handler, TIMER_PINNED);
	FUNC1(&req->rsk_timer, jiffies + timeout);

	FUNC0(FUNC3(req), NULL);
	/* before letting lookups find us, make sure all req fields
	 * are committed to memory and refcnt initialized.
	 */
	FUNC4();
	FUNC2(&req->rsk_refcnt, 2 + 1);
}