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
struct ceph_x_ticket_handler {int /*<<< orphan*/  session_key; } ;
struct ceph_x_server_challenge {int /*<<< orphan*/  server_challenge; } ;
struct ceph_x_reply_header {int /*<<< orphan*/  result; int /*<<< orphan*/  op; } ;
struct ceph_x_info {int starting; int /*<<< orphan*/  have_keys; int /*<<< orphan*/  secret; int /*<<< orphan*/  server_challenge; } ;
struct ceph_auth_client {int /*<<< orphan*/  want_keys; struct ceph_x_info* private; } ;

/* Variables and functions */
#define  CEPHX_GET_AUTH_SESSION_KEY 129 
#define  CEPHX_GET_PRINCIPAL_SESSION_KEY 128 
 int /*<<< orphan*/  CEPH_ENTITY_TYPE_AUTH ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_x_ticket_handler*) ; 
 int FUNC1 (struct ceph_x_ticket_handler*) ; 
 int FUNC2 (struct ceph_auth_client*,int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 struct ceph_x_ticket_handler* FUNC4 (struct ceph_auth_client*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ceph_auth_client *ac, int result,
			       void *buf, void *end)
{
	struct ceph_x_info *xi = ac->private;
	struct ceph_x_reply_header *head = buf;
	struct ceph_x_ticket_handler *th;
	int len = end - buf;
	int op;
	int ret;

	if (result)
		return result;  /* XXX hmm? */

	if (xi->starting) {
		/* it's a hello */
		struct ceph_x_server_challenge *sc = buf;

		if (len != sizeof(*sc))
			return -EINVAL;
		xi->server_challenge = FUNC7(sc->server_challenge);
		FUNC3("handle_reply got server challenge %llx\n",
		     xi->server_challenge);
		xi->starting = false;
		xi->have_keys &= ~CEPH_ENTITY_TYPE_AUTH;
		return -EAGAIN;
	}

	op = FUNC5(head->op);
	result = FUNC6(head->result);
	FUNC3("handle_reply op %d result %d\n", op, result);
	switch (op) {
	case CEPHX_GET_AUTH_SESSION_KEY:
		/* verify auth key */
		ret = FUNC2(ac, &xi->secret,
					       buf + sizeof(*head), end);
		break;

	case CEPHX_GET_PRINCIPAL_SESSION_KEY:
		th = FUNC4(ac, CEPH_ENTITY_TYPE_AUTH);
		if (FUNC0(th))
			return FUNC1(th);
		ret = FUNC2(ac, &th->session_key,
					       buf + sizeof(*head), end);
		break;

	default:
		return -EINVAL;
	}
	if (ret)
		return ret;
	if (ac->want_keys == xi->have_keys)
		return 0;
	return -EAGAIN;
}