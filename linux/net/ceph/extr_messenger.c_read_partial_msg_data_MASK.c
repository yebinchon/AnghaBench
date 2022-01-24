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
typedef  void* u32 ;
struct page {int dummy; } ;
struct ceph_msg_data_cursor {int /*<<< orphan*/  resid; scalar_t__ total_resid; } ;
struct ceph_msg {int /*<<< orphan*/  num_data_items; struct ceph_msg_data_cursor cursor; } ;
struct ceph_connection {void* in_data_crc; int /*<<< orphan*/  sock; int /*<<< orphan*/  msgr; struct ceph_msg* in_msg; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NOCRC ; 
 void* FUNC0 (void*,struct page*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_msg_data_cursor*,size_t) ; 
 struct page* FUNC2 (struct ceph_msg_data_cursor*,size_t*,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct page*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ceph_connection *con)
{
	struct ceph_msg *msg = con->in_msg;
	struct ceph_msg_data_cursor *cursor = &msg->cursor;
	bool do_datacrc = !FUNC4(FUNC5(con->msgr), NOCRC);
	struct page *page;
	size_t page_offset;
	size_t length;
	u32 crc = 0;
	int ret;

	if (!msg->num_data_items)
		return -EIO;

	if (do_datacrc)
		crc = con->in_data_crc;
	while (cursor->total_resid) {
		if (!cursor->resid) {
			FUNC1(cursor, 0);
			continue;
		}

		page = FUNC2(cursor, &page_offset, &length, NULL);
		ret = FUNC3(con->sock, page, page_offset, length);
		if (ret <= 0) {
			if (do_datacrc)
				con->in_data_crc = crc;

			return ret;
		}

		if (do_datacrc)
			crc = FUNC0(crc, page, page_offset, ret);
		FUNC1(cursor, (size_t)ret);
	}
	if (do_datacrc)
		con->in_data_crc = crc;

	return 1;	/* must return > 0 to indicate success */
}