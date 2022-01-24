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
struct ceph_mon_client {int cur_mon; int /*<<< orphan*/  monmap; int /*<<< orphan*/  m_subscribe_ack; int /*<<< orphan*/  m_subscribe; int /*<<< orphan*/  m_auth_reply; int /*<<< orphan*/  m_auth; int /*<<< orphan*/  generic_request_tree; int /*<<< orphan*/  auth; int /*<<< orphan*/  mutex; int /*<<< orphan*/  delayed_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mon_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct ceph_mon_client *monc)
{
	FUNC7("stop\n");
	FUNC3(&monc->delayed_work);

	FUNC9(&monc->mutex);
	FUNC2(monc);
	monc->cur_mon = -1;
	FUNC10(&monc->mutex);

	/*
	 * flush msgr queue before we destroy ourselves to ensure that:
	 *  - any work that references our embedded con is finished.
	 *  - any osd_client or other work that may reference an authorizer
	 *    finishes before we shut down the auth subsystem.
	 */
	FUNC6();

	FUNC4(monc->auth);

	FUNC1(!FUNC0(&monc->generic_request_tree));

	FUNC5(monc->m_auth);
	FUNC5(monc->m_auth_reply);
	FUNC5(monc->m_subscribe);
	FUNC5(monc->m_subscribe_ack);

	FUNC8(monc->monmap);
}