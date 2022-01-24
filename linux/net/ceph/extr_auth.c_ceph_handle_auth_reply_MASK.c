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
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ceph_auth_client {void* global_id; int negotiating; int protocol; int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
typedef  int s32 ;
struct TYPE_2__ {int (* handle_reply ) (struct ceph_auth_client*,int,void*,void*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  (* destroy ) (struct ceph_auth_client*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  bad ; 
 int FUNC0 (struct ceph_auth_client*,int) ; 
 int FUNC1 (struct ceph_auth_client*,void*,size_t) ; 
 void* FUNC2 (void**) ; 
 void* FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,void*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_auth_client*) ; 
 int FUNC10 (struct ceph_auth_client*,int,void*,void*) ; 

int FUNC11(struct ceph_auth_client *ac,
			   void *buf, size_t len,
			   void *reply_buf, size_t reply_len)
{
	void *p = buf;
	void *end = buf + len;
	int protocol;
	s32 result;
	u64 global_id;
	void *payload, *payload_end;
	int payload_len;
	char *result_msg;
	int result_msg_len;
	int ret = -EINVAL;

	FUNC6(&ac->mutex);
	FUNC5("handle_auth_reply %p %p\n", p, end);
	FUNC4(&p, end, sizeof(u32) * 3 + sizeof(u64), bad);
	protocol = FUNC2(&p);
	result = FUNC2(&p);
	global_id = FUNC3(&p);
	payload_len = FUNC2(&p);
	payload = p;
	p += payload_len;
	FUNC4(&p, end, sizeof(u32), bad);
	result_msg_len = FUNC2(&p);
	result_msg = p;
	p += result_msg_len;
	if (p != end)
		goto bad;

	FUNC5(" result %d '%.*s' gid %llu len %d\n", result, result_msg_len,
	     result_msg, global_id, payload_len);

	payload_end = payload + payload_len;

	if (global_id && ac->global_id != global_id) {
		FUNC5(" set global_id %lld -> %lld\n", ac->global_id, global_id);
		ac->global_id = global_id;
	}

	if (ac->negotiating) {
		/* server does not support our protocols? */
		if (!protocol && result < 0) {
			ret = result;
			goto out;
		}
		/* set up (new) protocol handler? */
		if (ac->protocol && ac->protocol != protocol) {
			ac->ops->destroy(ac);
			ac->protocol = 0;
			ac->ops = NULL;
		}
		if (ac->protocol != protocol) {
			ret = FUNC0(ac, protocol);
			if (ret) {
				FUNC8("error %d on auth protocol %d init\n",
				       ret, protocol);
				goto out;
			}
		}

		ac->negotiating = false;
	}

	ret = ac->ops->handle_reply(ac, result, payload, payload_end);
	if (ret == -EAGAIN) {
		ret = FUNC1(ac, reply_buf, reply_len);
	} else if (ret) {
		FUNC8("auth method '%s' error %d\n", ac->ops->name, ret);
	}

out:
	FUNC7(&ac->mutex);
	return ret;

bad:
	FUNC8("failed to decode auth msg\n");
	ret = -EINVAL;
	goto out;
}