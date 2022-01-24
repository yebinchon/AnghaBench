#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_8__ {scalar_t__ bi_bvec_done; } ;
struct ceph_msg_data_cursor {size_t resid; int last_piece; TYPE_3__ bvec_iter; TYPE_2__* data; } ;
struct bio_vec {int dummy; } ;
struct TYPE_6__ {struct bio_vec* bvecs; } ;
struct TYPE_7__ {TYPE_1__ bvec_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_vec*,TYPE_3__*,size_t) ; 
 size_t FUNC2 (struct bio_vec*,TYPE_3__) ; 
 struct page* FUNC3 (struct bio_vec*,TYPE_3__) ; 

__attribute__((used)) static bool FUNC4(struct ceph_msg_data_cursor *cursor,
					size_t bytes)
{
	struct bio_vec *bvecs = cursor->data->bvec_pos.bvecs;
	struct page *page = FUNC3(bvecs, cursor->bvec_iter);

	FUNC0(bytes > cursor->resid);
	FUNC0(bytes > FUNC2(bvecs, cursor->bvec_iter));
	cursor->resid -= bytes;
	FUNC1(bvecs, &cursor->bvec_iter, bytes);

	if (!cursor->resid) {
		FUNC0(!cursor->last_piece);
		return false;   /* no more data */
	}

	if (!bytes || (cursor->bvec_iter.bi_bvec_done &&
		       page == FUNC3(bvecs, cursor->bvec_iter)))
		return false;	/* more bytes to process in this segment */

	FUNC0(cursor->last_piece);
	FUNC0(cursor->resid < FUNC2(bvecs, cursor->bvec_iter));
	cursor->last_piece =
	    cursor->resid == FUNC2(bvecs, cursor->bvec_iter);
	return true;
}