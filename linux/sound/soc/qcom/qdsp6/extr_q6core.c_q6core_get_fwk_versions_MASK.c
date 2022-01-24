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
struct q6core {int resp_received; int /*<<< orphan*/  fwk_version_supported; int /*<<< orphan*/  wait; struct apr_device* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/  opcode; int /*<<< orphan*/  pkt_size; int /*<<< orphan*/  hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;
struct apr_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  APR_HDR_SIZE ; 
 int /*<<< orphan*/  APR_MSG_TYPE_SEQ_CMD ; 
 int /*<<< orphan*/  APR_PKT_VER ; 
 int /*<<< orphan*/  AVCS_CMD_GET_FWK_VERSION ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  Q6_READY_TIMEOUT_MS ; 
 int FUNC2 (struct apr_device*,struct apr_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct q6core *core)
{
	struct apr_device *adev = core->adev;
	struct apr_pkt pkt;
	int rc;

	pkt.hdr.hdr_field = FUNC0(APR_MSG_TYPE_SEQ_CMD,
				      FUNC1(APR_HDR_SIZE), APR_PKT_VER);
	pkt.hdr.pkt_size = APR_HDR_SIZE;
	pkt.hdr.opcode = AVCS_CMD_GET_FWK_VERSION;

	rc = FUNC2(adev, &pkt);
	if (rc < 0)
		return rc;

	rc = FUNC4(core->wait, (core->resp_received),
				FUNC3(Q6_READY_TIMEOUT_MS));
	if (rc > 0 && core->resp_received) {
		core->resp_received = false;

		if (!core->fwk_version_supported)
			return -ENOTSUPP;
		else
			return 0;
	}


	return rc;
}