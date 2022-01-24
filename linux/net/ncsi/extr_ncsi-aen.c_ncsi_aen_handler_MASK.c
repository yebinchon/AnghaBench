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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ncsi_dev_priv {TYPE_1__ ndev; } ;
struct ncsi_aen_pkt_hdr {scalar_t__ type; } ;
struct ncsi_aen_handler {scalar_t__ type; int (* handler ) (struct ncsi_dev_priv*,struct ncsi_aen_pkt_hdr*) ;int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 int FUNC0 (struct ncsi_aen_handler*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct ncsi_aen_handler* ncsi_aen_handlers ; 
 int FUNC2 (struct ncsi_aen_pkt_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct ncsi_dev_priv*,struct ncsi_aen_pkt_hdr*) ; 

int FUNC7(struct ncsi_dev_priv *ndp, struct sk_buff *skb)
{
	struct ncsi_aen_pkt_hdr *h;
	struct ncsi_aen_handler *nah = NULL;
	int i, ret;

	/* Find the handler */
	h = (struct ncsi_aen_pkt_hdr *)FUNC5(skb);
	for (i = 0; i < FUNC0(ncsi_aen_handlers); i++) {
		if (ncsi_aen_handlers[i].type == h->type) {
			nah = &ncsi_aen_handlers[i];
			break;
		}
	}

	if (!nah) {
		FUNC4(ndp->ndev.dev, "Invalid AEN (0x%x) received\n",
			    h->type);
		return -ENOENT;
	}

	ret = FUNC2(h, nah->payload);
	if (ret) {
		FUNC4(ndp->ndev.dev,
			    "NCSI: 'bad' packet ignored for AEN type 0x%x\n",
			    h->type);
		goto out;
	}

	ret = nah->handler(ndp, h);
	if (ret)
		FUNC3(ndp->ndev.dev,
			   "NCSI: Handler for AEN type 0x%x returned %d\n",
			   h->type, ret);
out:
	FUNC1(skb);
	return ret;
}