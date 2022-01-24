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
struct TYPE_2__ {int /*<<< orphan*/  osd; } ;
struct ceph_osd_linger_request {struct ceph_osd* osd; TYPE_1__ t; struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_osd {int dummy; } ;
typedef  enum calc_target_result { ____Placeholder_calc_target_result } calc_target_result ;

/* Variables and functions */
 int CALC_TARGET_NEED_RESEND ; 
 int FUNC0 (struct ceph_osd_client*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_osd*,struct ceph_osd_linger_request*) ; 
 struct ceph_osd* FUNC2 (struct ceph_osd_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_osd*,struct ceph_osd_linger_request*) ; 

__attribute__((used)) static enum calc_target_result
FUNC4(struct ceph_osd_linger_request *lreq)
{
	struct ceph_osd_client *osdc = lreq->osdc;
	enum calc_target_result ct_res;

	ct_res = FUNC0(osdc, &lreq->t, true);
	if (ct_res == CALC_TARGET_NEED_RESEND) {
		struct ceph_osd *osd;

		osd = FUNC2(osdc, lreq->t.osd, true);
		if (osd != lreq->osd) {
			FUNC3(lreq->osd, lreq);
			FUNC1(osd, lreq);
		}
	}

	return ct_res;
}