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
struct l2cap_info_req {int /*<<< orphan*/  type; } ;
struct l2cap_conn {int info_state; int /*<<< orphan*/  info_ident; int /*<<< orphan*/  info_timer; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int L2CAP_INFO_FEAT_MASK_REQ_SENT ; 
 int /*<<< orphan*/  L2CAP_INFO_REQ ; 
 int /*<<< orphan*/  L2CAP_INFO_TIMEOUT ; 
 int /*<<< orphan*/  L2CAP_IT_FEAT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_info_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct l2cap_conn *conn)
{
	struct l2cap_info_req req;

	if (conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_SENT)
		return;

	req.type = FUNC0(L2CAP_IT_FEAT_MASK);

	conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_SENT;
	conn->info_ident = FUNC1(conn);

	FUNC3(&conn->info_timer, L2CAP_INFO_TIMEOUT);

	FUNC2(conn, conn->info_ident, L2CAP_INFO_REQ,
		       sizeof(req), &req);
}