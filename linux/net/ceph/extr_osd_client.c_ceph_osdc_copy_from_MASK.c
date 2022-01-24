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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  base_oid; int /*<<< orphan*/  base_oloc; } ;
struct ceph_osd_request {TYPE_1__ r_t; int /*<<< orphan*/  r_flags; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_FLAG_WRITE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ceph_object_id*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ceph_object_locator*) ; 
 int FUNC2 (struct ceph_osd_request*,int /*<<< orphan*/ ) ; 
 struct ceph_osd_request* FUNC3 (struct ceph_osd_client*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_osd_client*,struct ceph_osd_request*,int) ; 
 int FUNC6 (struct ceph_osd_client*,struct ceph_osd_request*) ; 
 int FUNC7 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ceph_object_id*,struct ceph_object_locator*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct ceph_osd_client *osdc,
			u64 src_snapid, u64 src_version,
			struct ceph_object_id *src_oid,
			struct ceph_object_locator *src_oloc,
			u32 src_fadvise_flags,
			struct ceph_object_id *dst_oid,
			struct ceph_object_locator *dst_oloc,
			u32 dst_fadvise_flags,
			u8 copy_from_flags)
{
	struct ceph_osd_request *req;
	int ret;

	req = FUNC3(osdc, NULL, 1, false, GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	req->r_flags = CEPH_OSD_FLAG_WRITE;

	FUNC1(&req->r_t.base_oloc, dst_oloc);
	FUNC0(&req->r_t.base_oid, dst_oid);

	ret = FUNC7(req, src_snapid, src_version, src_oid,
					src_oloc, src_fadvise_flags,
					dst_fadvise_flags, copy_from_flags);
	if (ret)
		goto out;

	ret = FUNC2(req, GFP_KERNEL);
	if (ret)
		goto out;

	FUNC5(osdc, req, false);
	ret = FUNC6(osdc, req);

out:
	FUNC4(req);
	return ret;
}