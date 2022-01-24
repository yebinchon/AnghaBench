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
struct ceph_connection {int /*<<< orphan*/  out_temp_ack; int /*<<< orphan*/  in_seq_acked; int /*<<< orphan*/  in_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_FLAG_WRITE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_connection*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ceph_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ceph_connection *con)
{
	FUNC4("prepare_write_seq %p %llu -> %llu\n", con,
	     con->in_seq_acked, con->in_seq);
	con->in_seq_acked = con->in_seq;

	FUNC2(con);

	con->out_temp_ack = FUNC3(con->in_seq_acked);
	FUNC1(con, sizeof (con->out_temp_ack),
			 &con->out_temp_ack);

	FUNC0(con, CON_FLAG_WRITE_PENDING);
}