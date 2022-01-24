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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct cfsrvl {int /*<<< orphan*/  dev_info; TYPE_1__ layer; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_2__* dn; } ;
struct caif_payload_info {int hdr_len; int /*<<< orphan*/ * dev_info; int /*<<< orphan*/  channel_id; } ;
struct TYPE_4__ {int (* transmit ) (TYPE_2__*,struct cfpkt*) ;} ;

/* Variables and functions */
 scalar_t__ DGM_MTU ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*) ; 
 scalar_t__ FUNC2 (struct cfpkt*) ; 
 struct caif_payload_info* FUNC3 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfsrvl*,int*) ; 
 struct cfsrvl* FUNC5 (struct cflayer*) ; 
 int FUNC6 (TYPE_2__*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC7(struct cflayer *layr, struct cfpkt *pkt)
{
	u8 packet_type;
	u32 zero = 0;
	struct caif_payload_info *info;
	struct cfsrvl *service = FUNC5(layr);
	int ret;

	if (!FUNC4(service, &ret)) {
		FUNC1(pkt);
		return ret;
	}

	/* STE Modem cannot handle more than 1500 bytes datagrams */
	if (FUNC2(pkt) > DGM_MTU) {
		FUNC1(pkt);
		return -EMSGSIZE;
	}

	FUNC0(pkt, &zero, 3);
	packet_type = 0x08; /* B9 set - UNCLASSIFIED */
	FUNC0(pkt, &packet_type, 1);

	/* Add info for MUX-layer to route the packet out. */
	info = FUNC3(pkt);
	info->channel_id = service->layer.id;
	/* To optimize alignment, we add up the size of CAIF header
	 * before payload.
	 */
	info->hdr_len = 4;
	info->dev_info = &service->dev_info;
	return layr->dn->transmit(layr->dn, pkt);
}