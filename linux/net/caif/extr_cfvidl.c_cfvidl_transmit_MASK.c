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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct cfsrvl {int /*<<< orphan*/  dev_info; TYPE_1__ layer; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_2__* dn; } ;
struct caif_payload_info {int /*<<< orphan*/ * dev_info; int /*<<< orphan*/  channel_id; } ;
struct TYPE_4__ {int (* transmit ) (TYPE_2__*,struct cfpkt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfpkt*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfpkt*) ; 
 struct caif_payload_info* FUNC2 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfsrvl*,int*) ; 
 struct cfsrvl* FUNC4 (struct cflayer*) ; 
 int FUNC5 (TYPE_2__*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC6(struct cflayer *layr, struct cfpkt *pkt)
{
	struct cfsrvl *service = FUNC4(layr);
	struct caif_payload_info *info;
	u32 videoheader = 0;
	int ret;

	if (!FUNC3(service, &ret)) {
		FUNC1(pkt);
		return ret;
	}

	FUNC0(pkt, &videoheader, 4);
	/* Add info for MUX-layer to route the packet out */
	info = FUNC2(pkt);
	info->channel_id = service->layer.id;
	info->dev_info = &service->dev_info;
	return layr->dn->transmit(layr->dn, pkt);
}