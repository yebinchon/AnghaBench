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
struct ceph_mon_client {int /*<<< orphan*/  auth; scalar_t__ pending_auth; int /*<<< orphan*/  con; int /*<<< orphan*/  m_subscribe_ack; int /*<<< orphan*/  m_subscribe; int /*<<< orphan*/  m_auth_reply; int /*<<< orphan*/  m_auth; int /*<<< orphan*/  cur_mon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ceph_mon_client *monc)
{
	FUNC4("__close_session closing mon%d\n", monc->cur_mon);
	FUNC2(monc->m_auth);
	FUNC3(monc->m_auth_reply);
	FUNC2(monc->m_subscribe);
	FUNC3(monc->m_subscribe_ack);
	FUNC1(&monc->con);

	monc->pending_auth = 0;
	FUNC0(monc->auth);
}