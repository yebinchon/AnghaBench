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
struct llc_shdlc {int connect_result; int /*<<< orphan*/  connect_wq; int /*<<< orphan*/  state; scalar_t__ dnr; scalar_t__ nr; scalar_t__ ns; int /*<<< orphan*/  connect_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHDLC_DISCONNECTED ; 
 int /*<<< orphan*/  SHDLC_HALF_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct llc_shdlc *shdlc, int r)
{
	FUNC1("result=%d\n", r);

	FUNC0(&shdlc->connect_timer);

	if (r == 0) {
		shdlc->ns = 0;
		shdlc->nr = 0;
		shdlc->dnr = 0;

		shdlc->state = SHDLC_HALF_CONNECTED;
	} else {
		shdlc->state = SHDLC_DISCONNECTED;
	}

	shdlc->connect_result = r;

	FUNC2(shdlc->connect_wq);
}