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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct ceph_vino {int /*<<< orphan*/  snap; int /*<<< orphan*/  ino; } ;
struct ceph_osd_request {int dummy; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_file_layout {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_READ ; 
 int /*<<< orphan*/  CEPH_OSD_OP_READ ; 
 scalar_t__ FUNC0 (struct ceph_osd_request*) ; 
 int FUNC1 (struct ceph_osd_request*) ; 
 struct ceph_osd_request* FUNC2 (struct ceph_osd_client*,struct ceph_file_layout*,struct ceph_vino,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_osd_request*) ; 
 int FUNC4 (struct ceph_osd_client*,struct ceph_osd_request*,int) ; 
 int FUNC5 (struct ceph_osd_client*,struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_osd_request*,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ ,int,int,int) ; 

int FUNC8(struct ceph_osd_client *osdc,
			struct ceph_vino vino, struct ceph_file_layout *layout,
			u64 off, u64 *plen,
			u32 truncate_seq, u64 truncate_size,
			struct page **pages, int num_pages, int page_align)
{
	struct ceph_osd_request *req;
	int rc = 0;

	FUNC6("readpages on ino %llx.%llx on %llu~%llu\n", vino.ino,
	     vino.snap, off, *plen);
	req = FUNC2(osdc, layout, vino, off, plen, 0, 1,
				    CEPH_OSD_OP_READ, CEPH_OSD_FLAG_READ,
				    NULL, truncate_seq, truncate_size,
				    false);
	if (FUNC0(req))
		return FUNC1(req);

	/* it may be a short read due to an object boundary */
	FUNC7(req, 0,
				pages, *plen, page_align, false, false);

	FUNC6("readpages  final extent is %llu~%llu (%llu bytes align %d)\n",
	     off, *plen, *plen, page_align);

	rc = FUNC4(osdc, req, false);
	if (!rc)
		rc = FUNC5(osdc, req);

	FUNC3(req);
	FUNC6("readpages result %d\n", rc);
	return rc;
}