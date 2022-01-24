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
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct ncsi_rsp_handler {scalar_t__ type; int (* handler ) (struct ncsi_request*) ;int payload; } ;
struct ncsi_request {scalar_t__ flags; int /*<<< orphan*/  nlhdr; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  enabled; struct sk_buff* rsp; int /*<<< orphan*/  used; } ;
struct ncsi_pkt_hdr {scalar_t__ type; size_t id; int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ncsi_dev_priv {TYPE_1__ ndev; int /*<<< orphan*/  lock; struct ncsi_request* requests; } ;
struct ncsi_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct ncsi_rsp_handler*) ; 
 int ENODEV ; 
 int ENOENT ; 
 int EPERM ; 
 scalar_t__ NCSI_PKT_AEN ; 
 scalar_t__ NCSI_REQ_FLAG_NETLINK_DRIVEN ; 
 struct ncsi_dev_priv* FUNC1 (struct ncsi_dev*) ; 
 int FUNC2 (struct ncsi_dev_priv*,struct sk_buff*) ; 
 struct ncsi_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ncsi_request*) ; 
 int FUNC5 (struct ncsi_request*) ; 
 struct ncsi_rsp_handler* ncsi_rsp_handlers ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct ncsi_request*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC14 (struct ncsi_request*) ; 

int FUNC15(struct sk_buff *skb, struct net_device *dev,
		 struct packet_type *pt, struct net_device *orig_dev)
{
	struct ncsi_rsp_handler *nrh = NULL;
	struct ncsi_dev *nd;
	struct ncsi_dev_priv *ndp;
	struct ncsi_request *nr;
	struct ncsi_pkt_hdr *hdr;
	unsigned long flags;
	int payload, i, ret;

	/* Find the NCSI device */
	nd = FUNC3(dev);
	ndp = nd ? FUNC1(nd) : NULL;
	if (!ndp)
		return -ENODEV;

	/* Check if it is AEN packet */
	hdr = (struct ncsi_pkt_hdr *)FUNC11(skb);
	if (hdr->type == NCSI_PKT_AEN)
		return FUNC2(ndp, skb);

	/* Find the handler */
	for (i = 0; i < FUNC0(ncsi_rsp_handlers); i++) {
		if (ncsi_rsp_handlers[i].type == hdr->type) {
			if (ncsi_rsp_handlers[i].handler)
				nrh = &ncsi_rsp_handlers[i];
			else
				nrh = NULL;

			break;
		}
	}

	if (!nrh) {
		FUNC8(nd->dev, "Received unrecognized packet (0x%x)\n",
			   hdr->type);
		return -ENOENT;
	}

	/* Associate with the request */
	FUNC12(&ndp->lock, flags);
	nr = &ndp->requests[hdr->id];
	if (!nr->used) {
		FUNC13(&ndp->lock, flags);
		return -ENODEV;
	}

	nr->rsp = skb;
	if (!nr->enabled) {
		FUNC13(&ndp->lock, flags);
		ret = -ENOENT;
		goto out;
	}

	/* Validate the packet */
	FUNC13(&ndp->lock, flags);
	payload = nrh->payload;
	if (payload < 0)
		payload = FUNC10(hdr->length);
	ret = FUNC7(nr, payload);
	if (ret) {
		FUNC9(ndp->ndev.dev,
			    "NCSI: 'bad' packet ignored for type 0x%x\n",
			    hdr->type);

		if (nr->flags == NCSI_REQ_FLAG_NETLINK_DRIVEN) {
			if (ret == -EPERM)
				goto out_netlink;
			else
				FUNC6(ndp->ndev.dev,
						      nr->snd_seq,
						      nr->snd_portid,
						      &nr->nlhdr,
						      ret);
		}
		goto out;
	}

	/* Process the packet */
	ret = nrh->handler(nr);
	if (ret)
		FUNC8(ndp->ndev.dev,
			   "NCSI: Handler for packet type 0x%x returned %d\n",
			   hdr->type, ret);

out_netlink:
	if (nr->flags == NCSI_REQ_FLAG_NETLINK_DRIVEN) {
		ret = FUNC5(nr);
		if (ret) {
			FUNC8(ndp->ndev.dev,
				   "NCSI: Netlink handler for packet type 0x%x returned %d\n",
				   hdr->type, ret);
		}
	}

out:
	FUNC4(nr);
	return ret;
}