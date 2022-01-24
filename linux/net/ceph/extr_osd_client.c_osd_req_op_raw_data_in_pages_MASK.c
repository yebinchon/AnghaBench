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
struct ceph_osd_request {int dummy; } ;
struct ceph_osd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_osd_data*,struct page**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct ceph_osd_data* FUNC1 (struct ceph_osd_request*,unsigned int) ; 

void FUNC2(struct ceph_osd_request *osd_req,
			unsigned int which, struct page **pages,
			u64 length, u32 alignment,
			bool pages_from_pool, bool own_pages)
{
	struct ceph_osd_data *osd_data;

	osd_data = FUNC1(osd_req, which);
	FUNC0(osd_data, pages, length, alignment,
				pages_from_pool, own_pages);
}