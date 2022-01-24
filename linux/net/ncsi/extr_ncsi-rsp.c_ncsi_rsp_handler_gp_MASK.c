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
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
struct ncsi_rsp_gp_pkt {int vlan_mode; int fc_mode; unsigned short mac_enable; int mac_cnt; int vlan_cnt; int /*<<< orphan*/  vlan_enable; int /*<<< orphan*/  aen_mode; int /*<<< orphan*/  link_mode; int /*<<< orphan*/  valid_modes; int /*<<< orphan*/  bc_mode; TYPE_2__ rsp; } ;
struct ncsi_request {int /*<<< orphan*/  rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_channel_vlan_filter {void** vids; int /*<<< orphan*/  bitmap; } ;
struct ncsi_channel_mac_filter {int /*<<< orphan*/ * addrs; int /*<<< orphan*/  bitmap; } ;
struct ncsi_channel {int /*<<< orphan*/  lock; struct ncsi_channel_vlan_filter vlan_filter; struct ncsi_channel_mac_filter mac_filter; TYPE_3__* modes; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_6__ {int enable; int* data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETH_ALEN ; 
 size_t NCSI_MODE_AEN ; 
 size_t NCSI_MODE_BC ; 
 size_t NCSI_MODE_ENABLE ; 
 size_t NCSI_MODE_FC ; 
 size_t NCSI_MODE_LINK ; 
 size_t NCSI_MODE_MC ; 
 size_t NCSI_MODE_TX_ENABLE ; 
 size_t NCSI_MODE_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ncsi_dev_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ncsi_channel**) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct ncsi_request *nr)
{
	struct ncsi_channel_vlan_filter *ncvf;
	struct ncsi_channel_mac_filter *ncmf;
	struct ncsi_dev_priv *ndp = nr->ndp;
	struct ncsi_rsp_gp_pkt *rsp;
	struct ncsi_channel *nc;
	unsigned short enable;
	unsigned char *pdata;
	unsigned long flags;
	void *bitmap;
	int i;

	/* Find the channel */
	rsp = (struct ncsi_rsp_gp_pkt *)FUNC6(nr->rsp);
	FUNC2(ndp, rsp->rsp.common.channel,
				      NULL, &nc);
	if (!nc)
		return -ENODEV;

	/* Modes with explicit enabled indications */
	if (FUNC3(rsp->valid_modes) & 0x1) {	/* BC filter mode */
		nc->modes[NCSI_MODE_BC].enable = 1;
		nc->modes[NCSI_MODE_BC].data[0] = FUNC3(rsp->bc_mode);
	}
	if (FUNC3(rsp->valid_modes) & 0x2)	/* Channel enabled */
		nc->modes[NCSI_MODE_ENABLE].enable = 1;
	if (FUNC3(rsp->valid_modes) & 0x4)	/* Channel Tx enabled */
		nc->modes[NCSI_MODE_TX_ENABLE].enable = 1;
	if (FUNC3(rsp->valid_modes) & 0x8)	/* MC filter mode */
		nc->modes[NCSI_MODE_MC].enable = 1;

	/* Modes without explicit enabled indications */
	nc->modes[NCSI_MODE_LINK].enable = 1;
	nc->modes[NCSI_MODE_LINK].data[0] = FUNC3(rsp->link_mode);
	nc->modes[NCSI_MODE_VLAN].enable = 1;
	nc->modes[NCSI_MODE_VLAN].data[0] = rsp->vlan_mode;
	nc->modes[NCSI_MODE_FC].enable = 1;
	nc->modes[NCSI_MODE_FC].data[0] = rsp->fc_mode;
	nc->modes[NCSI_MODE_AEN].enable = 1;
	nc->modes[NCSI_MODE_AEN].data[0] = FUNC3(rsp->aen_mode);

	/* MAC addresses filter table */
	pdata = (unsigned char *)rsp + 48;
	enable = rsp->mac_enable;
	ncmf = &nc->mac_filter;
	FUNC7(&nc->lock, flags);
	bitmap = &ncmf->bitmap;
	for (i = 0; i < rsp->mac_cnt; i++, pdata += 6) {
		if (!(enable & (0x1 << i)))
			FUNC0(i, bitmap);
		else
			FUNC5(i, bitmap);

		FUNC1(&ncmf->addrs[i * ETH_ALEN], pdata, ETH_ALEN);
	}
	FUNC8(&nc->lock, flags);

	/* VLAN filter table */
	enable = FUNC4(rsp->vlan_enable);
	ncvf = &nc->vlan_filter;
	bitmap = &ncvf->bitmap;
	FUNC7(&nc->lock, flags);
	for (i = 0; i < rsp->vlan_cnt; i++, pdata += 2) {
		if (!(enable & (0x1 << i)))
			FUNC0(i, bitmap);
		else
			FUNC5(i, bitmap);

		ncvf->vids[i] = FUNC4(*(__be16 *)pdata);
	}
	FUNC8(&nc->lock, flags);

	return 0;
}