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
struct llc_shdlc {int connect_result; int /*<<< orphan*/  sm_work; int /*<<< orphan*/  state_mutex; scalar_t__ connect_tries; int /*<<< orphan*/ * connect_wq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHDLC_CONNECTING ; 
 int /*<<< orphan*/  connect_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct llc_shdlc *shdlc)
{
	FUNC0(connect_wq);

	FUNC3("\n");

	FUNC1(&shdlc->state_mutex);

	shdlc->state = SHDLC_CONNECTING;
	shdlc->connect_wq = &connect_wq;
	shdlc->connect_tries = 0;
	shdlc->connect_result = 1;

	FUNC2(&shdlc->state_mutex);

	FUNC4(&shdlc->sm_work);

	FUNC5(connect_wq, shdlc->connect_result != 1);

	return shdlc->connect_result;
}