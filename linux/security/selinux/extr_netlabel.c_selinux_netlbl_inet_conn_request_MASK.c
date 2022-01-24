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
typedef  scalar_t__ u16 ;
struct request_sock {int /*<<< orphan*/  secid; } ;
struct netlbl_lsm_secattr {int dummy; } ;

/* Variables and functions */
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 int FUNC0 (struct request_sock*,struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct netlbl_lsm_secattr*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  selinux_state ; 

int FUNC4(struct request_sock *req, u16 family)
{
	int rc;
	struct netlbl_lsm_secattr secattr;

	if (family != PF_INET && family != PF_INET6)
		return 0;

	FUNC2(&secattr);
	rc = FUNC3(&selinux_state, req->secid,
					    &secattr);
	if (rc != 0)
		goto inet_conn_request_return;
	rc = FUNC0(req, &secattr);
inet_conn_request_return:
	FUNC1(&secattr);
	return rc;
}