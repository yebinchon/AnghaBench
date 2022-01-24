#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct rds_sock {int rs_snd_bytes; int /*<<< orphan*/  rs_lock; int /*<<< orphan*/  rs_send_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_sequence; int /*<<< orphan*/  h_len; } ;
struct TYPE_3__ {TYPE_2__ i_hdr; struct rds_conn_path* i_conn_path; struct rds_connection* i_conn; } ;
struct rds_message {TYPE_1__ m_inc; int /*<<< orphan*/  m_flags; int /*<<< orphan*/  m_conn_item; struct rds_sock* m_rs; int /*<<< orphan*/  m_sock_item; } ;
struct rds_connection {int dummy; } ;
struct rds_conn_path {int /*<<< orphan*/  cp_lock; int /*<<< orphan*/  cp_send_queue; int /*<<< orphan*/  cp_next_tx_seq; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_MSG_ACK_REQUIRED ; 
 int /*<<< orphan*/  RDS_MSG_ON_CONN ; 
 int /*<<< orphan*/  RDS_MSG_ON_SOCK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_sock*) ; 
 int FUNC7 (struct rds_sock*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct rds_message*,int,struct rds_sock*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC15(struct rds_sock *rs, struct rds_connection *conn,
			     struct rds_conn_path *cp,
			     struct rds_message *rm, __be16 sport,
			     __be16 dport, int *queued)
{
	unsigned long flags;
	u32 len;

	if (*queued)
		goto out;

	len = FUNC0(rm->m_inc.i_hdr.h_len);

	/* this is the only place which holds both the socket's rs_lock
	 * and the connection's c_lock */
	FUNC12(&rs->rs_lock, flags);

	/*
	 * If there is a little space in sndbuf, we don't queue anything,
	 * and userspace gets -EAGAIN. But poll() indicates there's send
	 * room. This can lead to bad behavior (spinning) if snd_bytes isn't
	 * freed up by incoming acks. So we check the *old* value of
	 * rs_snd_bytes here to allow the last msg to exceed the buffer,
	 * and poll() now knows no more data can be sent.
	 */
	if (rs->rs_snd_bytes < FUNC7(rs)) {
		rs->rs_snd_bytes += len;

		/* let recv side know we are close to send space exhaustion.
		 * This is probably not the optimal way to do it, as this
		 * means we set the flag on *all* messages as soon as our
		 * throughput hits a certain threshold.
		 */
		if (rs->rs_snd_bytes >= FUNC7(rs) / 2)
			FUNC9(RDS_MSG_ACK_REQUIRED, &rm->m_flags);

		FUNC3(&rm->m_sock_item, &rs->rs_send_queue);
		FUNC9(RDS_MSG_ON_SOCK, &rm->m_flags);
		FUNC4(rm);
		FUNC10(FUNC6(rs));
		rm->m_rs = rs;

		/* The code ordering is a little weird, but we're
		   trying to minimize the time we hold c_lock */
		FUNC5(&rm->m_inc.i_hdr, sport, dport, 0);
		rm->m_inc.i_conn = conn;
		rm->m_inc.i_conn_path = cp;
		FUNC4(rm);

		FUNC11(&cp->cp_lock);
		rm->m_inc.i_hdr.h_sequence = FUNC2(cp->cp_next_tx_seq++);
		FUNC3(&rm->m_conn_item, &cp->cp_send_queue);
		FUNC9(RDS_MSG_ON_CONN, &rm->m_flags);
		FUNC13(&cp->cp_lock);

		FUNC8("queued msg %p len %d, rs %p bytes %d seq %llu\n",
			 rm, len, rs, rs->rs_snd_bytes,
			 (unsigned long long)FUNC1(rm->m_inc.i_hdr.h_sequence));

		*queued = 1;
	}

	FUNC14(&rs->rs_lock, flags);
out:
	return *queued;
}