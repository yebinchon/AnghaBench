#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  completion; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct xen_snd_front_evtchnl {scalar_t__ state; TYPE_2__ u; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ EVTCHNL_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct xen_snd_front_evtchnl*) ; 

__attribute__((used)) static int FUNC3(struct xen_snd_front_evtchnl *evtchnl)
{
	if (FUNC1(evtchnl->state != EVTCHNL_STATE_CONNECTED))
		return -EIO;

	FUNC0(&evtchnl->u.req.completion);
	FUNC2(evtchnl);
	return 0;
}