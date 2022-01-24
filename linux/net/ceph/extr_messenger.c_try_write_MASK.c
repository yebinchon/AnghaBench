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
struct ceph_connection {int state; int sock; int in_msg; char* error_msg; scalar_t__ in_seq; scalar_t__ in_seq_acked; int /*<<< orphan*/  out_queue; int /*<<< orphan*/ * out_msg; scalar_t__ out_msg_done; scalar_t__ out_skip; scalar_t__ out_kvec_left; int /*<<< orphan*/  out_kvec_bytes; int /*<<< orphan*/  in_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CEPH_MSGR_TAG_READY ; 
 int /*<<< orphan*/  CON_FLAG_KEEPALIVE_PENDING ; 
 int /*<<< orphan*/  CON_FLAG_WRITE_PENDING ; 
 scalar_t__ CON_STATE_CONNECTING ; 
 scalar_t__ CON_STATE_NEGOTIATING ; 
 scalar_t__ CON_STATE_OPEN ; 
 scalar_t__ CON_STATE_PREOPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ceph_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC12 (struct ceph_connection*) ; 
 int FUNC13 (struct ceph_connection*) ; 
 int FUNC14 (struct ceph_connection*) ; 
 int FUNC15 (struct ceph_connection*) ; 

__attribute__((used)) static int FUNC16(struct ceph_connection *con)
{
	int ret = 1;

	FUNC6("try_write start %p state %lu\n", con, con->state);
	if (con->state != CON_STATE_PREOPEN &&
	    con->state != CON_STATE_CONNECTING &&
	    con->state != CON_STATE_NEGOTIATING &&
	    con->state != CON_STATE_OPEN)
		return 0;

	/* open the socket first? */
	if (con->state == CON_STATE_PREOPEN) {
		FUNC0(con->sock);
		con->state = CON_STATE_CONNECTING;

		FUNC5(con);
		FUNC10(con);
		FUNC8(con);

		FUNC0(con->in_msg);
		con->in_tag = CEPH_MSGR_TAG_READY;
		FUNC6("try_write initiating connect on %p new state %lu\n",
		     con, con->state);
		ret = FUNC2(con);
		if (ret < 0) {
			con->error_msg = "connect error";
			goto out;
		}
	}

more:
	FUNC6("try_write out_kvec_bytes %d\n", con->out_kvec_bytes);
	FUNC0(!con->sock);

	/* kvec data queued? */
	if (con->out_kvec_left) {
		ret = FUNC13(con);
		if (ret <= 0)
			goto out;
	}
	if (con->out_skip) {
		ret = FUNC15(con);
		if (ret <= 0)
			goto out;
	}

	/* msg pages? */
	if (con->out_msg) {
		if (con->out_msg_done) {
			FUNC1(con->out_msg);
			con->out_msg = NULL;   /* we're done with this one */
			goto do_next;
		}

		ret = FUNC14(con);
		if (ret == 1)
			goto more;  /* we need to send the footer, too! */
		if (ret == 0)
			goto out;
		if (ret < 0) {
			FUNC6("try_write write_partial_message_data err %d\n",
			     ret);
			goto out;
		}
	}

do_next:
	if (con->state == CON_STATE_OPEN) {
		if (FUNC4(con, CON_FLAG_KEEPALIVE_PENDING)) {
			FUNC11(con);
			goto more;
		}
		/* is anything else pending? */
		if (!FUNC7(&con->out_queue)) {
			FUNC12(con);
			goto more;
		}
		if (con->in_seq > con->in_seq_acked) {
			FUNC9(con);
			goto more;
		}
	}

	/* Nothing to do! */
	FUNC3(con, CON_FLAG_WRITE_PENDING);
	FUNC6("try_write nothing else to write.\n");
	ret = 0;
out:
	FUNC6("try_write done on %p ret %d\n", con, ret);
	return ret;
}