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
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct ceph_osd_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  osd_data; int /*<<< orphan*/  src_fadvise_flags; int /*<<< orphan*/  flags; void* src_version; void* snapid; } ;
struct ceph_osd_req_op {int indata_len; TYPE_1__ copy_from; } ;
struct ceph_object_locator {int dummy; } ;
struct ceph_object_id {int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_OP_COPY_FROM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct page**) ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct page**) ; 
 struct ceph_osd_req_op* FUNC2 (struct ceph_osd_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page** FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct page**,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (void**,void*,struct ceph_object_locator*) ; 
 void* FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct ceph_osd_request *req,
				     u64 src_snapid, u64 src_version,
				     struct ceph_object_id *src_oid,
				     struct ceph_object_locator *src_oloc,
				     u32 src_fadvise_flags,
				     u32 dst_fadvise_flags,
				     u8 copy_from_flags)
{
	struct ceph_osd_req_op *op;
	struct page **pages;
	void *p, *end;

	pages = FUNC3(1, GFP_KERNEL);
	if (FUNC0(pages))
		return FUNC1(pages);

	op = FUNC2(req, 0, CEPH_OSD_OP_COPY_FROM, dst_fadvise_flags);
	op->copy_from.snapid = src_snapid;
	op->copy_from.src_version = src_version;
	op->copy_from.flags = copy_from_flags;
	op->copy_from.src_fadvise_flags = src_fadvise_flags;

	p = FUNC7(pages[0]);
	end = p + PAGE_SIZE;
	FUNC4(&p, end, src_oid->name, src_oid->name_len);
	FUNC6(&p, end, src_oloc);
	op->indata_len = PAGE_SIZE - (end - p);

	FUNC5(&op->copy_from.osd_data, pages,
				 op->indata_len, 0, false, true);
	return 0;
}