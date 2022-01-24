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
struct ceph_msg_header {int /*<<< orphan*/  middle_len; } ;
struct ceph_msg {int /*<<< orphan*/  middle; int /*<<< orphan*/  hdr; } ;
struct ceph_connection {scalar_t__ state; char* error_msg; struct ceph_msg* in_msg; struct ceph_msg_header in_hdr; int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {struct ceph_msg* (* alloc_msg ) (struct ceph_connection*,struct ceph_msg_header*,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CON_STATE_OPEN ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int FUNC1 (struct ceph_connection*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_msg*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ceph_msg_header*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_msg*,struct ceph_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ceph_msg* FUNC8 (struct ceph_connection*,struct ceph_msg_header*,int*) ; 

__attribute__((used)) static int FUNC9(struct ceph_connection *con, int *skip)
{
	struct ceph_msg_header *hdr = &con->in_hdr;
	int middle_len = FUNC3(hdr->middle_len);
	struct ceph_msg *msg;
	int ret = 0;

	FUNC0(con->in_msg != NULL);
	FUNC0(!con->ops->alloc_msg);

	FUNC7(&con->mutex);
	msg = con->ops->alloc_msg(con, hdr, skip);
	FUNC6(&con->mutex);
	if (con->state != CON_STATE_OPEN) {
		if (msg)
			FUNC2(msg);
		return -EAGAIN;
	}
	if (msg) {
		FUNC0(*skip);
		FUNC5(msg, con);
		con->in_msg = msg;
	} else {
		/*
		 * Null message pointer means either we should skip
		 * this message or we couldn't allocate memory.  The
		 * former is not an error.
		 */
		if (*skip)
			return 0;

		con->error_msg = "error allocating memory for incoming message";
		return -ENOMEM;
	}
	FUNC4(&con->in_msg->hdr, &con->in_hdr, sizeof(con->in_hdr));

	if (middle_len && !con->in_msg->middle) {
		ret = FUNC1(con, con->in_msg);
		if (ret < 0) {
			FUNC2(con->in_msg);
			con->in_msg = NULL;
		}
	}

	return ret;
}