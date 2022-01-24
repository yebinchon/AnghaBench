#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ceph_connection {scalar_t__ out_more; TYPE_1__* auth; int /*<<< orphan*/  out_connect; } ;
struct TYPE_2__ {int authorizer_buf_len; int /*<<< orphan*/ * authorizer_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_FLAG_WRITE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_connection*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ceph_connection *con)
{
	FUNC1(con, sizeof(con->out_connect), &con->out_connect);
	if (con->auth)
		FUNC1(con, con->auth->authorizer_buf_len,
				 con->auth->authorizer_buf);

	con->out_more = 0;
	FUNC0(con, CON_FLAG_WRITE_PENDING);
}