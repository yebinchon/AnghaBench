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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct TYPE_5__ {unsigned int pcm_channels; unsigned int pcm_rate; int /*<<< orphan*/  gref_directory; void* period_sz; void* buffer_sz; int /*<<< orphan*/  pcm_format; } ;
struct TYPE_6__ {TYPE_1__ open; } ;
struct xensnd_req {TYPE_2__ op; } ;
struct TYPE_7__ {int /*<<< orphan*/  req_io_lock; } ;
struct TYPE_8__ {TYPE_3__ req; } ;
struct xen_snd_front_evtchnl {TYPE_4__ u; int /*<<< orphan*/  ring_io_lock; } ;
struct xen_front_pgdir_shbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XENSND_OP_OPEN ; 
 int FUNC0 (struct xen_snd_front_evtchnl*) ; 
 struct xensnd_req* FUNC1 (struct xen_snd_front_evtchnl*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xen_snd_front_evtchnl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xen_front_pgdir_shbuf*) ; 

int FUNC6(struct xen_snd_front_evtchnl *evtchnl,
				 struct xen_front_pgdir_shbuf *shbuf,
				 u8 format, unsigned int channels,
				 unsigned int rate, u32 buffer_sz,
				 u32 period_sz)
{
	struct xensnd_req *req;
	int ret;

	FUNC3(&evtchnl->u.req.req_io_lock);

	FUNC3(&evtchnl->ring_io_lock);
	req = FUNC1(evtchnl, XENSND_OP_OPEN);
	req->op.open.pcm_format = format;
	req->op.open.pcm_channels = channels;
	req->op.open.pcm_rate = rate;
	req->op.open.buffer_sz = buffer_sz;
	req->op.open.period_sz = period_sz;
	req->op.open.gref_directory =
		FUNC5(shbuf);
	FUNC4(&evtchnl->ring_io_lock);

	ret = FUNC0(evtchnl);

	if (ret == 0)
		ret = FUNC2(evtchnl);

	FUNC4(&evtchnl->u.req.req_io_lock);
	return ret;
}