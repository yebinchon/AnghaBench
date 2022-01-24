#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_allocation; } ;
struct sk_buff {int dummy; } ;
struct nsp_conn_init_msg {unsigned char msgflg; int dstaddr; int /*<<< orphan*/  segsize; int /*<<< orphan*/  info; int /*<<< orphan*/  services; int /*<<< orphan*/  srcaddr; } ;
struct dn_skb_cb {int /*<<< orphan*/  rt_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  opt_data; int /*<<< orphan*/  opt_optl; } ;
struct TYPE_4__ {unsigned char acc_userl; unsigned char acc_passl; unsigned char acc_accl; int /*<<< orphan*/  acc_acc; int /*<<< orphan*/  acc_pass; int /*<<< orphan*/  acc_user; } ;
struct TYPE_6__ {int sdn_flags; scalar_t__ sdn_objnum; } ;
struct dn_scp {int /*<<< orphan*/  persist_fxn; int /*<<< orphan*/  persist; TYPE_2__ conndata_out; TYPE_1__ accessdata; TYPE_3__ peer; TYPE_3__ addr; int /*<<< orphan*/  segsize_loc; int /*<<< orphan*/  info_loc; int /*<<< orphan*/  services_loc; int /*<<< orphan*/  addrloc; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  unsigned char __u8 ;

/* Variables and functions */
 unsigned char DN_MENUVER_ACC ; 
 unsigned char DN_MENUVER_PRX ; 
 unsigned char DN_MENUVER_UIC ; 
 unsigned char DN_MENUVER_USR ; 
 int /*<<< orphan*/  DN_RT_F_RQR ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 struct dn_skb_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned char NSP_CI ; 
 int SDF_PROXY ; 
 int SDF_UICPROXY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct sock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  dn_nsp_retrans_conninit ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct nsp_conn_init_msg* FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned char) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

void FUNC12(struct sock *sk, unsigned char msgflg)
{
	struct dn_scp *scp = FUNC0(sk);
	struct nsp_conn_init_msg *msg;
	unsigned char aux;
	unsigned char menuver;
	struct dn_skb_cb *cb;
	unsigned char type = 1;
	gfp_t allocation = (msgflg == NSP_CI) ? sk->sk_allocation : GFP_ATOMIC;
	struct sk_buff *skb = FUNC3(sk, 200, allocation);

	if (!skb)
		return;

	cb  = FUNC1(skb);
	msg = FUNC8(skb, sizeof(*msg));

	msg->msgflg	= msgflg;
	msg->dstaddr	= 0x0000;		/* Remote Node will assign it*/

	msg->srcaddr	= scp->addrloc;
	msg->services	= scp->services_loc;	/* Requested flow control    */
	msg->info	= scp->info_loc;	/* Version Number            */
	msg->segsize	= FUNC2(scp->segsize_loc);	/* Max segment size  */

	if (scp->peer.sdn_objnum)
		type = 0;

	FUNC8(skb, FUNC6(&scp->peer,
					  FUNC11(skb), type));
	FUNC8(skb, FUNC6(&scp->addr,
					  FUNC11(skb), 2));

	menuver = DN_MENUVER_ACC | DN_MENUVER_USR;
	if (scp->peer.sdn_flags & SDF_PROXY)
		menuver |= DN_MENUVER_PRX;
	if (scp->peer.sdn_flags & SDF_UICPROXY)
		menuver |= DN_MENUVER_UIC;

	FUNC10(skb, menuver);	/* Menu Version		*/

	aux = scp->accessdata.acc_userl;
	FUNC10(skb, aux);
	if (aux > 0)
		FUNC9(skb, scp->accessdata.acc_user, aux);

	aux = scp->accessdata.acc_passl;
	FUNC10(skb, aux);
	if (aux > 0)
		FUNC9(skb, scp->accessdata.acc_pass, aux);

	aux = scp->accessdata.acc_accl;
	FUNC10(skb, aux);
	if (aux > 0)
		FUNC9(skb, scp->accessdata.acc_acc, aux);

	aux = (__u8)FUNC7(scp->conndata_out.opt_optl);
	FUNC10(skb, aux);
	if (aux > 0)
		FUNC9(skb, scp->conndata_out.opt_data, aux);

	scp->persist = FUNC4(sk);
	scp->persist_fxn = dn_nsp_retrans_conninit;

	cb->rt_flags = DN_RT_F_RQR;

	FUNC5(skb);
}