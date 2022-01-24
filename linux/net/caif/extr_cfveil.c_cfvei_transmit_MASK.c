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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct cfsrvl {int /*<<< orphan*/  dev_info; TYPE_1__ layer; } ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_2__* dn; } ;
struct caif_payload_info {int hdr_len; int /*<<< orphan*/ * dev_info; int /*<<< orphan*/  channel_id; } ;
struct TYPE_4__ {int (* transmit ) (TYPE_2__*,struct cfpkt*) ;} ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cfpkt*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfpkt*) ; 
 struct caif_payload_info* FUNC3 (struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfsrvl*,int*) ; 
 struct cfsrvl* FUNC5 (struct cflayer*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (TYPE_2__*,struct cfpkt*) ; 

__attribute__((used)) static int FUNC8(struct cflayer *layr, struct cfpkt *pkt)
{
	u8 tmp = 0;
	struct caif_payload_info *info;
	int ret;
	struct cfsrvl *service = FUNC5(layr);
	if (!FUNC4(service, &ret))
		goto err;
	FUNC0(layr->dn != NULL);
	FUNC0(layr->dn->transmit != NULL);

	if (FUNC1(pkt, &tmp, 1) < 0) {
		FUNC6("Packet is erroneous!\n");
		ret = -EPROTO;
		goto err;
	}

	/* Add info-> for MUX-layer to route the packet out. */
	info = FUNC3(pkt);
	info->channel_id = service->layer.id;
	info->hdr_len = 1;
	info->dev_info = &service->dev_info;
	return layr->dn->transmit(layr->dn, pkt);
err:
	FUNC2(pkt);
	return ret;
}