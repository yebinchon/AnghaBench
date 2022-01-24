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
struct ceph_osd_request {int dummy; } ;
struct ceph_osd_data {int dummy; } ;
struct ceph_bvec_iter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_osd_data*,struct ceph_bvec_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  extent ; 
 struct ceph_osd_data* FUNC1 (struct ceph_osd_request*,unsigned int,int /*<<< orphan*/ ,struct ceph_osd_data*) ; 

void FUNC2(struct ceph_osd_request *osd_req,
					 unsigned int which,
					 struct ceph_bvec_iter *bvec_pos)
{
	struct ceph_osd_data *osd_data;

	osd_data = FUNC1(osd_req, which, extent, osd_data);
	FUNC0(osd_data, bvec_pos, 0);
}