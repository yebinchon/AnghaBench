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
struct q6copp {int /*<<< orphan*/  id; } ;
struct q6adm {int dummy; } ;
struct TYPE_2__ {int pkt_size; int src_port; int token; int /*<<< orphan*/  opcode; int /*<<< orphan*/  dest_port; int /*<<< orphan*/  hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  close ;

/* Variables and functions */
 int /*<<< orphan*/  ADM_CMD_DEVICE_CLOSE_V5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  APR_HDR_SIZE ; 
 int /*<<< orphan*/  APR_MSG_TYPE_SEQ_CMD ; 
 int /*<<< orphan*/  APR_PKT_VER ; 
 int FUNC2 (struct q6adm*,struct q6copp*,struct apr_pkt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct q6adm *adm, struct q6copp *copp,
			      int port_id, int copp_idx)
{
	struct apr_pkt close;

	close.hdr.hdr_field = FUNC0(APR_MSG_TYPE_SEQ_CMD,
					FUNC1(APR_HDR_SIZE),
					APR_PKT_VER);
	close.hdr.pkt_size = sizeof(close);
	close.hdr.src_port = port_id;
	close.hdr.dest_port = copp->id;
	close.hdr.token = port_id << 16 | copp_idx;
	close.hdr.opcode = ADM_CMD_DEVICE_CLOSE_V5;

	return FUNC2(adm, copp, &close, 0);
}