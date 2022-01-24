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
typedef  int /*<<< orphan*/  u32 ;
struct ceph_osd_backoff {int /*<<< orphan*/  end; int /*<<< orphan*/  begin; int /*<<< orphan*/  id; int /*<<< orphan*/  spgid; } ;
struct TYPE_4__ {void* iov_base; int iov_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  front_len; int /*<<< orphan*/  version; } ;
struct ceph_msg {int front_alloc_len; TYPE_2__ front; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CEPH_ENCODING_START_BLK_LEN ; 
 int /*<<< orphan*/  CEPH_MSG_OSD_BACKOFF ; 
 int /*<<< orphan*/  CEPH_OSD_BACKOFF_OP_ACK_BLOCK ; 
 int CEPH_PGID_ENCODING_LEN ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ) ; 
 struct ceph_msg* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void**,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ceph_msg *FUNC10(
				const struct ceph_osd_backoff *backoff,
				u32 map_epoch)
{
	struct ceph_msg *msg;
	void *p, *end;
	int msg_size;

	msg_size = CEPH_ENCODING_START_BLK_LEN +
			CEPH_PGID_ENCODING_LEN + 1; /* spgid */
	msg_size += 4 + 1 + 8; /* map_epoch, op, id */
	msg_size += CEPH_ENCODING_START_BLK_LEN +
			FUNC9(backoff->begin);
	msg_size += CEPH_ENCODING_START_BLK_LEN +
			FUNC9(backoff->end);

	msg = FUNC4(CEPH_MSG_OSD_BACKOFF, msg_size, GFP_NOIO, true);
	if (!msg)
		return NULL;

	p = msg->front.iov_base;
	end = p + msg->front_alloc_len;

	FUNC8(&p, &backoff->spgid);
	FUNC1(&p, map_epoch);
	FUNC3(&p, CEPH_OSD_BACKOFF_OP_ACK_BLOCK);
	FUNC2(&p, backoff->id);
	FUNC7(&p, end, backoff->begin);
	FUNC7(&p, end, backoff->end);
	FUNC0(p != end);

	msg->front.iov_len = p - msg->front.iov_base;
	msg->hdr.version = FUNC5(1); /* MOSDBackoff v1 */
	msg->hdr.front_len = FUNC6(msg->front.iov_len);

	return msg;
}