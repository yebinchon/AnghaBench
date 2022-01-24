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
typedef  int u8 ;
struct cfsrvl {int open; } ;
struct cfpkt {int dummy; } ;
struct cflayer {int /*<<< orphan*/  (* ctrlcmd ) (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* up; } ;
struct TYPE_2__ {int (* receive ) (TYPE_1__*,struct cfpkt*) ;int /*<<< orphan*/ * ctrlcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAIF_CTRLCMD_FLOW_OFF_IND ; 
 int /*<<< orphan*/  CAIF_CTRLCMD_FLOW_ON_IND ; 
 int /*<<< orphan*/  CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND ; 
 int EPROTO ; 
#define  UTIL_FLOW_OFF 131 
#define  UTIL_FLOW_ON 130 
#define  UTIL_PAYLOAD 129 
#define  UTIL_REMOTE_SHUTDOWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*) ; 
 scalar_t__ FUNC2 (struct cfpkt*,int*,int) ; 
 struct cfsrvl* FUNC3 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 (TYPE_1__*,struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC7 (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct cflayer *layr, struct cfpkt *pkt)
{
	u8 cmd = -1;
	struct cfsrvl *service = FUNC3(layr);
	FUNC0(layr != NULL);
	FUNC0(layr->up != NULL);
	FUNC0(layr->up->receive != NULL);
	FUNC0(layr->up->ctrlcmd != NULL);
	if (FUNC2(pkt, &cmd, 1) < 0) {
		FUNC4("Packet is erroneous!\n");
		FUNC1(pkt);
		return -EPROTO;
	}

	switch (cmd) {
	case UTIL_PAYLOAD:
		return layr->up->receive(layr->up, pkt);
	case UTIL_FLOW_OFF:
		layr->ctrlcmd(layr, CAIF_CTRLCMD_FLOW_OFF_IND, 0);
		FUNC1(pkt);
		return 0;
	case UTIL_FLOW_ON:
		layr->ctrlcmd(layr, CAIF_CTRLCMD_FLOW_ON_IND, 0);
		FUNC1(pkt);
		return 0;
	case UTIL_REMOTE_SHUTDOWN:	/* Remote Shutdown Request */
		FUNC4("REMOTE SHUTDOWN REQUEST RECEIVED\n");
		layr->ctrlcmd(layr, CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND, 0);
		service->open = false;
		FUNC1(pkt);
		return 0;
	default:
		FUNC1(pkt);
		FUNC5("Unknown service control %d (0x%x)\n", cmd, cmd);
		return -EPROTO;
	}
}