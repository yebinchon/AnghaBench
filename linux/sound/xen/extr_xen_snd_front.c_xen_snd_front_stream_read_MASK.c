#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long length; unsigned long offset; } ;
struct TYPE_6__ {TYPE_1__ rw; } ;
struct xensnd_req {TYPE_2__ op; } ;
struct TYPE_7__ {int /*<<< orphan*/  req_io_lock; } ;
struct TYPE_8__ {TYPE_3__ req; } ;
struct xen_snd_front_evtchnl {TYPE_4__ u; int /*<<< orphan*/  ring_io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  XENSND_OP_READ ; 
 int FUNC0 (struct xen_snd_front_evtchnl*) ; 
 struct xensnd_req* FUNC1 (struct xen_snd_front_evtchnl*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xen_snd_front_evtchnl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct xen_snd_front_evtchnl *evtchnl,
			      unsigned long pos, unsigned long count)
{
	struct xensnd_req *req;
	int ret;

	FUNC3(&evtchnl->u.req.req_io_lock);

	FUNC3(&evtchnl->ring_io_lock);
	req = FUNC1(evtchnl, XENSND_OP_READ);
	req->op.rw.length = count;
	req->op.rw.offset = pos;
	FUNC4(&evtchnl->ring_io_lock);

	ret = FUNC0(evtchnl);

	if (ret == 0)
		ret = FUNC2(evtchnl);

	FUNC4(&evtchnl->u.req.req_io_lock);
	return ret;
}