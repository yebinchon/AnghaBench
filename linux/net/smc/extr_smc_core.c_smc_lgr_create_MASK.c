#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_9__ {struct smc_link_group* lgr; } ;
struct smc_sock {TYPE_3__ conn; scalar_t__ listen_smc; } ;
struct smc_link_group {int /*<<< orphan*/  list; struct smc_link* lnk; int /*<<< orphan*/ * peer_systemid; int /*<<< orphan*/  role; int /*<<< orphan*/  smcd; int /*<<< orphan*/  peer_gid; int /*<<< orphan*/  conns_all; int /*<<< orphan*/  free_work; int /*<<< orphan*/  id; int /*<<< orphan*/ * rmbs; int /*<<< orphan*/ * sndbufs; int /*<<< orphan*/  conns_lock; int /*<<< orphan*/  rmbs_lock; int /*<<< orphan*/  sndbufs_lock; int /*<<< orphan*/  vlan_id; scalar_t__ sync_err; scalar_t__ is_smcd; } ;
struct smc_link {size_t link_id; int ibport; int psn_initial; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  gid; TYPE_5__* smcibdev; int /*<<< orphan*/  path_mtu; int /*<<< orphan*/  state; } ;
struct smc_init_info {int ib_port; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  ism_dev; scalar_t__ is_smcd; TYPE_5__* ib_dev; TYPE_1__* ib_lcl; int /*<<< orphan*/  ism_gid; } ;
typedef  int /*<<< orphan*/  rndvec ;
struct TYPE_11__ {int /*<<< orphan*/  initialized; TYPE_2__* pattr; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; scalar_t__ num; } ;
struct TYPE_8__ {int /*<<< orphan*/  active_mtu; } ;
struct TYPE_7__ {int* id_for_peer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int SMC_CLC_DECL_INTERR ; 
 int SMC_CLC_DECL_ISMVLANERR ; 
 int SMC_CLC_DECL_MEM ; 
 int /*<<< orphan*/  SMC_CLNT ; 
 int /*<<< orphan*/  SMC_LGR_ID_SIZE ; 
 scalar_t__ SMC_LGR_NUM_INCR ; 
 int /*<<< orphan*/  SMC_LNK_ACTIVATING ; 
 int SMC_RMBE_SIZES ; 
 int /*<<< orphan*/  SMC_SERV ; 
 size_t SMC_SINGLE_LINK ; 
 int /*<<< orphan*/  SMC_SYSTEMID_LEN ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_link_group*) ; 
 struct smc_link_group* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct smc_link*) ; 
 int FUNC9 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC10 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC11 (struct smc_link*) ; 
 int FUNC12 (TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smc_lgr_free_work ; 
 TYPE_4__ smc_lgr_list ; 
 int /*<<< orphan*/  FUNC16 (struct smc_link*) ; 
 int FUNC17 (struct smc_link*) ; 
 int FUNC18 (struct smc_link*) ; 
 int FUNC19 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC20 (struct smc_link*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct smc_sock *smc, struct smc_init_info *ini)
{
	struct smc_link_group *lgr;
	struct smc_link *lnk;
	u8 rndvec[3];
	int rc = 0;
	int i;

	if (ini->is_smcd && ini->vlan_id) {
		if (FUNC14(ini->ism_dev, ini->vlan_id)) {
			rc = SMC_CLC_DECL_ISMVLANERR;
			goto out;
		}
	}

	lgr = FUNC4(sizeof(*lgr), GFP_KERNEL);
	if (!lgr) {
		rc = SMC_CLC_DECL_MEM;
		goto ism_put_vlan;
	}
	lgr->is_smcd = ini->is_smcd;
	lgr->sync_err = 0;
	lgr->vlan_id = ini->vlan_id;
	FUNC7(&lgr->sndbufs_lock);
	FUNC7(&lgr->rmbs_lock);
	FUNC7(&lgr->conns_lock);
	for (i = 0; i < SMC_RMBE_SIZES; i++) {
		FUNC1(&lgr->sndbufs[i]);
		FUNC1(&lgr->rmbs[i]);
	}
	smc_lgr_list.num += SMC_LGR_NUM_INCR;
	FUNC6(&lgr->id, (u8 *)&smc_lgr_list.num, SMC_LGR_ID_SIZE);
	FUNC0(&lgr->free_work, smc_lgr_free_work);
	lgr->conns_all = RB_ROOT;
	if (ini->is_smcd) {
		/* SMC-D specific settings */
		lgr->peer_gid = ini->ism_gid;
		lgr->smcd = ini->ism_dev;
	} else {
		/* SMC-R specific settings */
		lgr->role = smc->listen_smc ? SMC_SERV : SMC_CLNT;
		FUNC6(lgr->peer_systemid, ini->ib_lcl->id_for_peer,
		       SMC_SYSTEMID_LEN);

		lnk = &lgr->lnk[SMC_SINGLE_LINK];
		/* initialize link */
		lnk->state = SMC_LNK_ACTIVATING;
		lnk->link_id = SMC_SINGLE_LINK;
		lnk->smcibdev = ini->ib_dev;
		lnk->ibport = ini->ib_port;
		lnk->path_mtu =
			ini->ib_dev->pattr[ini->ib_port - 1].active_mtu;
		if (!ini->ib_dev->initialized)
			FUNC13(ini->ib_dev);
		FUNC2(rndvec, sizeof(rndvec));
		lnk->psn_initial = rndvec[0] + (rndvec[1] << 8) +
			(rndvec[2] << 16);
		rc = FUNC12(lnk->smcibdev, lnk->ibport,
					  ini->vlan_id, lnk->gid,
					  &lnk->sgid_index);
		if (rc)
			goto free_lgr;
		rc = FUNC17(lnk);
		if (rc)
			goto free_lgr;
		rc = FUNC18(lnk);
		if (rc)
			goto clear_llc_lnk;
		rc = FUNC8(lnk);
		if (rc)
			goto free_link_mem;
		rc = FUNC9(lnk);
		if (rc)
			goto dealloc_pd;
		rc = FUNC19(lnk);
		if (rc)
			goto destroy_qp;
	}
	smc->conn.lgr = lgr;
	FUNC21(&smc_lgr_list.lock);
	FUNC5(&lgr->list, &smc_lgr_list.list);
	FUNC22(&smc_lgr_list.lock);
	return 0;

destroy_qp:
	FUNC11(lnk);
dealloc_pd:
	FUNC10(lnk);
free_link_mem:
	FUNC20(lnk);
clear_llc_lnk:
	FUNC16(lnk);
free_lgr:
	FUNC3(lgr);
ism_put_vlan:
	if (ini->is_smcd && ini->vlan_id)
		FUNC15(ini->ism_dev, ini->vlan_id);
out:
	if (rc < 0) {
		if (rc == -ENOMEM)
			rc = SMC_CLC_DECL_MEM;
		else
			rc = SMC_CLC_DECL_INTERR;
	}
	return rc;
}