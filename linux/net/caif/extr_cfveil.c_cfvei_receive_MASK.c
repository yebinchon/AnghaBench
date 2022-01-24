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
struct cfpkt {int dummy; } ;
struct cflayer {int /*<<< orphan*/  (* ctrlcmd ) (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* up; int /*<<< orphan*/ * receive; } ;
struct TYPE_2__ {int (* receive ) (TYPE_1__*,struct cfpkt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAIF_CTRLCMD_FLOW_OFF_IND ; 
 int /*<<< orphan*/  CAIF_CTRLCMD_FLOW_ON_IND ; 
 int EPROTO ; 
#define  VEI_FLOW_OFF 131 
#define  VEI_FLOW_ON 130 
#define  VEI_PAYLOAD 129 
#define  VEI_SET_PIN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*) ; 
 scalar_t__ FUNC2 (struct cfpkt*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int FUNC5 (TYPE_1__*,struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC6 (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cflayer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cflayer *layr, struct cfpkt *pkt)
{
	u8 cmd;
	int ret;
	FUNC0(layr->up != NULL);
	FUNC0(layr->receive != NULL);
	FUNC0(layr->ctrlcmd != NULL);


	if (FUNC2(pkt, &cmd, 1) < 0) {
		FUNC3("Packet is erroneous!\n");
		FUNC1(pkt);
		return -EPROTO;
	}
	switch (cmd) {
	case VEI_PAYLOAD:
		ret = layr->up->receive(layr->up, pkt);
		return ret;
	case VEI_FLOW_OFF:
		layr->ctrlcmd(layr, CAIF_CTRLCMD_FLOW_OFF_IND, 0);
		FUNC1(pkt);
		return 0;
	case VEI_FLOW_ON:
		layr->ctrlcmd(layr, CAIF_CTRLCMD_FLOW_ON_IND, 0);
		FUNC1(pkt);
		return 0;
	case VEI_SET_PIN:	/* SET RS232 PIN */
		FUNC1(pkt);
		return 0;
	default:		/* SET RS232 PIN */
		FUNC4("Unknown VEI control packet %d (0x%x)!\n", cmd, cmd);
		FUNC1(pkt);
		return -EPROTO;
	}
}