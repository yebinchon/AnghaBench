#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {int needed_tailroom; } ;
struct ncsi_request {struct sk_buff* cmd; } ;
struct ncsi_dev {struct net_device* dev; } ;
struct ncsi_dev_priv {struct ncsi_dev ndev; } ;
struct ncsi_cmd_pkt_hdr {int dummy; } ;
struct ncsi_cmd_arg {int payload; int /*<<< orphan*/  req_flags; struct ncsi_dev_priv* ndp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_NCSI ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct net_device*) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ncsi_request* FUNC3 (struct ncsi_dev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ncsi_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static struct ncsi_request *FUNC7(struct ncsi_cmd_arg *nca)
{
	struct ncsi_dev_priv *ndp = nca->ndp;
	struct ncsi_dev *nd = &ndp->ndev;
	struct net_device *dev = nd->dev;
	int hlen = FUNC0(dev);
	int tlen = dev->needed_tailroom;
	int len = hlen + tlen;
	struct sk_buff *skb;
	struct ncsi_request *nr;

	nr = FUNC3(ndp, nca->req_flags);
	if (!nr)
		return NULL;

	/* NCSI command packet has 16-bytes header, payload, 4 bytes checksum.
	 * The packet needs padding if its payload is less than 26 bytes to
	 * meet 64 bytes minimal ethernet frame length.
	 */
	len += sizeof(struct ncsi_cmd_pkt_hdr) + 4;
	if (nca->payload < 26)
		len += 26;
	else
		len += nca->payload;

	/* Allocate skb */
	skb = FUNC1(len, GFP_ATOMIC);
	if (!skb) {
		FUNC4(nr);
		return NULL;
	}

	nr->cmd = skb;
	FUNC5(skb, hlen);
	FUNC6(skb);

	skb->dev = dev;
	skb->protocol = FUNC2(ETH_P_NCSI);

	return nr;
}