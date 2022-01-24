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
typedef  scalar_t__ u64 ;
struct ceph_osd_data {scalar_t__ type; int /*<<< orphan*/  bvec_pos; int /*<<< orphan*/  bio_pos; int /*<<< orphan*/  pagelist; int /*<<< orphan*/  alignment; int /*<<< orphan*/  pages; } ;
struct ceph_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CEPH_OSD_DATA_TYPE_BIO ; 
 scalar_t__ CEPH_OSD_DATA_TYPE_BVECS ; 
 scalar_t__ CEPH_OSD_DATA_TYPE_NONE ; 
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGELIST ; 
 scalar_t__ CEPH_OSD_DATA_TYPE_PAGES ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_msg*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_msg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_msg*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ceph_osd_data*) ; 

__attribute__((used)) static void FUNC6(struct ceph_msg *msg,
				struct ceph_osd_data *osd_data)
{
	u64 length = FUNC5(osd_data);

	if (osd_data->type == CEPH_OSD_DATA_TYPE_PAGES) {
		FUNC0(length > (u64) SIZE_MAX);
		if (length)
			FUNC4(msg, osd_data->pages,
					length, osd_data->alignment);
	} else if (osd_data->type == CEPH_OSD_DATA_TYPE_PAGELIST) {
		FUNC0(!length);
		FUNC3(msg, osd_data->pagelist);
#ifdef CONFIG_BLOCK
	} else if (osd_data->type == CEPH_OSD_DATA_TYPE_BIO) {
		ceph_msg_data_add_bio(msg, &osd_data->bio_pos, length);
#endif
	} else if (osd_data->type == CEPH_OSD_DATA_TYPE_BVECS) {
		FUNC2(msg, &osd_data->bvec_pos);
	} else {
		FUNC0(osd_data->type != CEPH_OSD_DATA_TYPE_NONE);
	}
}