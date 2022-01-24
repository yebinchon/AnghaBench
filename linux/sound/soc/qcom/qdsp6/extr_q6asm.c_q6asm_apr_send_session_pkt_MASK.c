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
typedef  scalar_t__ uint32_t ;
struct q6asm {int /*<<< orphan*/  dev; int /*<<< orphan*/  mem_wait; int /*<<< orphan*/  adev; } ;
struct TYPE_2__ {scalar_t__ opcode; scalar_t__ status; } ;
struct audio_client {int /*<<< orphan*/  cmd_lock; TYPE_1__ result; } ;
struct apr_hdr {scalar_t__ opcode; } ;
struct apr_pkt {struct apr_hdr hdr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int FUNC0 (int /*<<< orphan*/ ,struct apr_pkt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct q6asm *a, struct audio_client *ac,
				      struct apr_pkt *pkt, uint32_t rsp_opcode)
{
	struct apr_hdr *hdr = &pkt->hdr;
	int rc;

	FUNC2(&ac->cmd_lock);
	ac->result.opcode = 0;
	ac->result.status = 0;
	rc = FUNC0(a->adev, pkt);
	if (rc < 0)
		goto err;

	if (rsp_opcode)
		rc = FUNC4(a->mem_wait,
					(ac->result.opcode == hdr->opcode) ||
					(ac->result.opcode == rsp_opcode),
					5 * HZ);
	else
		rc = FUNC4(a->mem_wait,
					(ac->result.opcode == hdr->opcode),
					5 * HZ);

	if (!rc) {
		FUNC1(a->dev, "CMD timeout\n");
		rc = -ETIMEDOUT;
	} else if (ac->result.status > 0) {
		FUNC1(a->dev, "DSP returned error[%x]\n",
			ac->result.status);
		rc = -EINVAL;
	}

err:
	FUNC3(&ac->cmd_lock);
	return rc;
}