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
struct TYPE_4__ {int /*<<< orphan*/  global_seq; int /*<<< orphan*/  connect_seq; scalar_t__ tag; int /*<<< orphan*/  authorizer_len; } ;
struct ceph_connection {TYPE_2__ in_reply; TYPE_1__* auth; int /*<<< orphan*/  in_base_pos; } ;
struct TYPE_3__ {int authorizer_reply_buf_len; TYPE_2__* authorizer_reply_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ceph_connection*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (struct ceph_connection*,int,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct ceph_connection *con)
{
	int size;
	int end;
	int ret;

	FUNC0("read_partial_connect %p at %d\n", con, con->in_base_pos);

	size = sizeof (con->in_reply);
	end = size;
	ret = FUNC3(con, end, size, &con->in_reply);
	if (ret <= 0)
		goto out;

	if (con->auth) {
		size = FUNC1(con->in_reply.authorizer_len);
		if (size > con->auth->authorizer_reply_buf_len) {
			FUNC2("authorizer reply too big: %d > %zu\n", size,
			       con->auth->authorizer_reply_buf_len);
			ret = -EINVAL;
			goto out;
		}

		end += size;
		ret = FUNC3(con, end, size,
				   con->auth->authorizer_reply_buf);
		if (ret <= 0)
			goto out;
	}

	FUNC0("read_partial_connect %p tag %d, con_seq = %u, g_seq = %u\n",
	     con, (int)con->in_reply.tag,
	     FUNC1(con->in_reply.connect_seq),
	     FUNC1(con->in_reply.global_seq));
out:
	return ret;
}