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
struct sctp_errhdr {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;
struct sctp_association {TYPE_1__ base; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_RSRC_LOW ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_association*,struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC8 (struct sctp_association*,int /*<<< orphan*/ *,int) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct sctp_cmd_seq *cmds,
				  struct sctp_association *asoc,
				  struct sctp_association *new)
{
	struct net *net = FUNC9(asoc->base.sk);
	struct sctp_chunk *abort;

	if (!FUNC6(asoc, new))
		return;

	abort = FUNC8(asoc, NULL, sizeof(struct sctp_errhdr));
	if (abort) {
		FUNC7(abort, SCTP_ERROR_RSRC_LOW, 0);
		FUNC5(cmds, SCTP_CMD_REPLY, FUNC0(abort));
	}
	FUNC5(cmds, SCTP_CMD_SET_SK_ERR, FUNC2(ECONNABORTED));
	FUNC5(cmds, SCTP_CMD_ASSOC_FAILED,
			FUNC4(SCTP_ERROR_RSRC_LOW));
	FUNC3(net, SCTP_MIB_ABORTEDS);
	FUNC1(net, SCTP_MIB_CURRESTAB);
}