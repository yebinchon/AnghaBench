#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ceph_mon_client {int pending_auth; TYPE_3__* m_auth; int /*<<< orphan*/  con; } ;
struct TYPE_7__ {int /*<<< orphan*/  front_len; } ;
struct TYPE_6__ {int iov_len; } ;
struct TYPE_8__ {TYPE_2__ hdr; TYPE_1__ front; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ceph_mon_client *monc, int len)
{
	monc->pending_auth = 1;
	monc->m_auth->front.iov_len = len;
	monc->m_auth->hdr.front_len = FUNC3(len);
	FUNC2(monc->m_auth);
	FUNC1(monc->m_auth);  /* keep our ref */
	FUNC0(&monc->con, monc->m_auth);
}