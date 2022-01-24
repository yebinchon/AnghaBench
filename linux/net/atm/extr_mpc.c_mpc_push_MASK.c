#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tag ;
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {char* data; int /*<<< orphan*/  protocol; int /*<<< orphan*/  truesize; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct mpoa_client {TYPE_2__* eg_ops; } ;
struct llc_snap_hdr {int dummy; } ;
struct atm_vcc {scalar_t__ proto_data; } ;
struct atm_skb_data {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  DH_length; int /*<<< orphan*/  DLL_header; } ;
struct TYPE_10__ {int /*<<< orphan*/  packets_rcvd; int /*<<< orphan*/  latest_ip_addr; TYPE_1__ ctrl_info; struct atm_vcc* shortcut; } ;
typedef  TYPE_3__ eg_cache_entry ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_11__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* put ) (TYPE_3__*) ;TYPE_3__* (* get_by_tag ) (int /*<<< orphan*/ ,struct mpoa_client*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 struct mpoa_client* FUNC6 (struct net_device*) ; 
 TYPE_7__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  llc_snap_mpoa_ctrl ; 
 int /*<<< orphan*/  llc_snap_mpoa_data ; 
 int /*<<< orphan*/  llc_snap_mpoa_data_tagged ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct atm_vcc*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (struct atm_vcc*,int /*<<< orphan*/ *) ; 
 struct sock* FUNC14 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC19 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 TYPE_3__* FUNC22 (int /*<<< orphan*/ ,struct mpoa_client*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC25(struct atm_vcc *vcc, struct sk_buff *skb)
{
	struct net_device *dev = (struct net_device *)vcc->proto_data;
	struct sk_buff *new_skb;
	eg_cache_entry *eg;
	struct mpoa_client *mpc;
	__be32 tag;
	char *tmp;

	FUNC2("(%s)\n", dev->name);
	if (skb == NULL) {
		FUNC4("(%s) null skb, closing VCC\n", dev->name);
		FUNC10(vcc, dev);
		return;
	}

	skb->dev = dev;
	if (FUNC8(skb->data, &llc_snap_mpoa_ctrl,
		   sizeof(struct llc_snap_hdr)) == 0) {
		struct sock *sk = FUNC14(vcc);

		FUNC4("(%s) control packet arrived\n", dev->name);
		/* Pass control packets to daemon */
		FUNC18(&sk->sk_receive_queue, skb);
		sk->sk_data_ready(sk);
		return;
	}

	/* data coming over the shortcut */
	FUNC1(vcc, skb->truesize);

	mpc = FUNC6(dev);
	if (mpc == NULL) {
		FUNC12("(%s) unknown MPC\n", dev->name);
		return;
	}

	if (FUNC8(skb->data, &llc_snap_mpoa_data_tagged,
		   sizeof(struct llc_snap_hdr)) == 0) { /* MPOA tagged data */
		FUNC2("(%s) tagged data packet arrived\n", dev->name);

	} else if (FUNC8(skb->data, &llc_snap_mpoa_data,
			  sizeof(struct llc_snap_hdr)) == 0) { /* MPOA data */
		FUNC12("(%s) Unsupported non-tagged data packet arrived.  Purging\n",
			dev->name);
		FUNC3(skb);
		return;
	} else {
		FUNC12("(%s) garbage arrived, purging\n", dev->name);
		FUNC3(skb);
		return;
	}

	tmp = skb->data + sizeof(struct llc_snap_hdr);
	tag = *(__be32 *)tmp;

	eg = mpc->eg_ops->get_by_tag(tag, mpc);
	if (eg == NULL) {
		FUNC12("mpoa: (%s) Didn't find egress cache entry, tag = %u\n",
			dev->name, tag);
		FUNC13(vcc, NULL);
		FUNC3(skb);
		return;
	}

	/*
	 * See if ingress MPC is using shortcut we opened as a return channel.
	 * This means we have a bi-directional vcc opened by us.
	 */
	if (eg->shortcut == NULL) {
		eg->shortcut = vcc;
		FUNC12("(%s) egress SVC in use\n", dev->name);
	}

	FUNC16(skb, sizeof(struct llc_snap_hdr) + sizeof(tag));
					/* get rid of LLC/SNAP header */
	new_skb = FUNC19(skb, eg->ctrl_info.DH_length);
					/* LLC/SNAP is shorter than MAC header :( */
	FUNC3(skb);
	if (new_skb == NULL) {
		mpc->eg_ops->put(eg);
		return;
	}
	FUNC17(new_skb, eg->ctrl_info.DH_length);     /* add MAC header */
	FUNC15(new_skb, eg->ctrl_info.DLL_header,
				eg->ctrl_info.DH_length);
	new_skb->protocol = FUNC5(new_skb, dev);
	FUNC20(new_skb);

	eg->latest_ip_addr = FUNC7(new_skb)->saddr;
	eg->packets_rcvd++;
	mpc->eg_ops->put(eg);

	FUNC9(FUNC0(new_skb), 0, sizeof(struct atm_skb_data));
	FUNC11(new_skb);
}