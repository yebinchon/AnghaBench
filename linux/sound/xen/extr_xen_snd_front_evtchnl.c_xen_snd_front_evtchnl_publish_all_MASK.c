#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xenbus_transaction {int dummy; } ;
struct xen_front_cfg_card {int num_pcm_instances; struct xen_front_cfg_pcm_instance* pcm_instances; } ;
struct xen_snd_front_info {int /*<<< orphan*/  xb_dev; TYPE_2__* evt_pairs; struct xen_front_cfg_card cfg; } ;
struct xen_front_cfg_pcm_instance {int num_streams_pb; int num_streams_cap; TYPE_3__* streams_cap; TYPE_1__* streams_pb; } ;
struct TYPE_6__ {int index; int /*<<< orphan*/  xenstore_path; } ;
struct TYPE_5__ {int /*<<< orphan*/  evt; int /*<<< orphan*/  req; } ;
struct TYPE_4__ {int index; int /*<<< orphan*/  xenstore_path; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  XENSND_FIELD_EVT_CHNL ; 
 int /*<<< orphan*/  XENSND_FIELD_EVT_EVT_CHNL ; 
 int /*<<< orphan*/  XENSND_FIELD_EVT_RING_REF ; 
 int /*<<< orphan*/  XENSND_FIELD_RING_REF ; 
 int FUNC0 (struct xenbus_transaction,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC2 (struct xenbus_transaction,int) ; 
 int FUNC3 (struct xenbus_transaction*) ; 

int FUNC4(struct xen_snd_front_info *front_info)
{
	struct xen_front_cfg_card *cfg = &front_info->cfg;
	struct xenbus_transaction xbt;
	int ret, d;

again:
	ret = FUNC3(&xbt);
	if (ret < 0) {
		FUNC1(front_info->xb_dev, ret,
				 "starting transaction");
		return ret;
	}

	for (d = 0; d < cfg->num_pcm_instances; d++) {
		struct xen_front_cfg_pcm_instance *pcm_instance;
		int s, index;

		pcm_instance = &cfg->pcm_instances[d];

		for (s = 0; s < pcm_instance->num_streams_pb; s++) {
			index = pcm_instance->streams_pb[s].index;

			ret = FUNC0(xbt,
					      &front_info->evt_pairs[index].req,
					      pcm_instance->streams_pb[s].xenstore_path,
					      XENSND_FIELD_RING_REF,
					      XENSND_FIELD_EVT_CHNL);
			if (ret < 0)
				goto fail;

			ret = FUNC0(xbt,
					      &front_info->evt_pairs[index].evt,
					      pcm_instance->streams_pb[s].xenstore_path,
					      XENSND_FIELD_EVT_RING_REF,
					      XENSND_FIELD_EVT_EVT_CHNL);
			if (ret < 0)
				goto fail;
		}

		for (s = 0; s < pcm_instance->num_streams_cap; s++) {
			index = pcm_instance->streams_cap[s].index;

			ret = FUNC0(xbt,
					      &front_info->evt_pairs[index].req,
					      pcm_instance->streams_cap[s].xenstore_path,
					      XENSND_FIELD_RING_REF,
					      XENSND_FIELD_EVT_CHNL);
			if (ret < 0)
				goto fail;

			ret = FUNC0(xbt,
					      &front_info->evt_pairs[index].evt,
					      pcm_instance->streams_cap[s].xenstore_path,
					      XENSND_FIELD_EVT_RING_REF,
					      XENSND_FIELD_EVT_EVT_CHNL);
			if (ret < 0)
				goto fail;
		}
	}
	ret = FUNC2(xbt, 0);
	if (ret < 0) {
		if (ret == -EAGAIN)
			goto again;

		FUNC1(front_info->xb_dev, ret,
				 "completing transaction");
		goto fail_to_end;
	}
	return 0;
fail:
	FUNC2(xbt, 1);
fail_to_end:
	FUNC1(front_info->xb_dev, ret, "writing XenStore");
	return ret;
}