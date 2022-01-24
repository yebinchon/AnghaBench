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
struct ceph_msg_data_cursor {size_t resid; int need_crc; TYPE_1__* data; int /*<<< orphan*/  last_piece; scalar_t__ total_resid; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  CEPH_MSG_DATA_BIO 132 
#define  CEPH_MSG_DATA_BVECS 131 
#define  CEPH_MSG_DATA_NONE 130 
#define  CEPH_MSG_DATA_PAGELIST 129 
#define  CEPH_MSG_DATA_PAGES 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_msg_data_cursor*) ; 
 int FUNC4 (struct ceph_msg_data_cursor*,size_t) ; 
 int FUNC5 (struct ceph_msg_data_cursor*,size_t) ; 
 int FUNC6 (struct ceph_msg_data_cursor*,size_t) ; 
 int FUNC7 (struct ceph_msg_data_cursor*,size_t) ; 

__attribute__((used)) static void FUNC8(struct ceph_msg_data_cursor *cursor,
				  size_t bytes)
{
	bool new_piece;

	FUNC1(bytes > cursor->resid);
	switch (cursor->data->type) {
	case CEPH_MSG_DATA_PAGELIST:
		new_piece = FUNC6(cursor, bytes);
		break;
	case CEPH_MSG_DATA_PAGES:
		new_piece = FUNC7(cursor, bytes);
		break;
#ifdef CONFIG_BLOCK
	case CEPH_MSG_DATA_BIO:
		new_piece = ceph_msg_data_bio_advance(cursor, bytes);
		break;
#endif /* CONFIG_BLOCK */
	case CEPH_MSG_DATA_BVECS:
		new_piece = FUNC5(cursor, bytes);
		break;
	case CEPH_MSG_DATA_NONE:
	default:
		FUNC0();
		break;
	}
	cursor->total_resid -= bytes;

	if (!cursor->resid && cursor->total_resid) {
		FUNC2(!cursor->last_piece);
		cursor->data++;
		FUNC3(cursor);
		new_piece = true;
	}
	cursor->need_crc = new_piece;
}