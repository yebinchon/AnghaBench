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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct timespec64 {int dummy; } ;
struct page {int dummy; } ;
struct ceph_vino {int dummy; } ;
struct ceph_snap_context {int dummy; } ;
struct ceph_osd_request {struct timespec64 r_mtime; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_file_layout {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_WRITE ; 
 int /*<<< orphan*/  CEPH_OSD_OP_WRITE ; 
 scalar_t__ FUNC0 (struct ceph_osd_request*) ; 
 int PAGE_MASK ; 
 int FUNC1 (struct ceph_osd_request*) ; 
 struct ceph_osd_request* FUNC2 (struct ceph_osd_client*,struct ceph_file_layout*,struct ceph_vino,int,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ceph_snap_context*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_osd_request*) ; 
 int FUNC4 (struct ceph_osd_client*,struct ceph_osd_request*,int) ; 
 int FUNC5 (struct ceph_osd_client*,struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_osd_request*,int /*<<< orphan*/ ,struct page**,int,int,int,int) ; 

int FUNC8(struct ceph_osd_client *osdc, struct ceph_vino vino,
			 struct ceph_file_layout *layout,
			 struct ceph_snap_context *snapc,
			 u64 off, u64 len,
			 u32 truncate_seq, u64 truncate_size,
			 struct timespec64 *mtime,
			 struct page **pages, int num_pages)
{
	struct ceph_osd_request *req;
	int rc = 0;
	int page_align = off & ~PAGE_MASK;

	req = FUNC2(osdc, layout, vino, off, &len, 0, 1,
				    CEPH_OSD_OP_WRITE, CEPH_OSD_FLAG_WRITE,
				    snapc, truncate_seq, truncate_size,
				    true);
	if (FUNC0(req))
		return FUNC1(req);

	/* it may be a short write due to an object boundary */
	FUNC7(req, 0, pages, len, page_align,
				false, false);
	FUNC6("writepages %llu~%llu (%llu bytes)\n", off, len, len);

	req->r_mtime = *mtime;
	rc = FUNC4(osdc, req, true);
	if (!rc)
		rc = FUNC5(osdc, req);

	FUNC3(req);
	if (rc == 0)
		rc = len;
	FUNC6("writepages result %d\n", rc);
	return rc;
}