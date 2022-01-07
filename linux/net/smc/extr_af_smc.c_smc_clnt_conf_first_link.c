
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rmb_desc; struct smc_link_group* lgr; } ;
struct smc_sock {TYPE_2__ conn; TYPE_1__* clcsock; } ;
struct smc_link_group {struct smc_link* lnk; } ;
struct smc_link {int ibport; int gid; TYPE_3__* smcibdev; int llc_add; scalar_t__ llc_confirm_rc; int llc_confirm; } ;
struct smc_clc_msg_decline {int dummy; } ;
struct TYPE_8__ {int sysctl_tcp_keepalive_time; } ;
struct net {TYPE_4__ ipv4; } ;
typedef int dclc ;
struct TYPE_7__ {int * mac; } ;
struct TYPE_5__ {int sk; } ;


 int CLC_WAIT_TIME_SHORT ;
 int EAGAIN ;
 int SMC_CLC_DECLINE ;
 int SMC_CLC_DECL_ERR_RDYLNK ;
 int SMC_CLC_DECL_ERR_REGRMB ;
 int SMC_CLC_DECL_RMBE_EC ;
 int SMC_CLC_DECL_TIMEOUT_AL ;
 int SMC_CLC_DECL_TIMEOUT_CL ;
 int SMC_LLC_RESP ;
 int SMC_LLC_WAIT_FIRST_TIME ;
 int SMC_LLC_WAIT_TIME ;
 size_t SMC_SINGLE_LINK ;
 int smc_clc_wait_msg (struct smc_sock*,struct smc_clc_msg_decline*,int,int ,int ) ;
 int smc_ib_modify_qp_rts (struct smc_link*) ;
 int smc_llc_link_active (struct smc_link*,int ) ;
 int smc_llc_send_add_link (struct smc_link*,int ,int ,int ) ;
 int smc_llc_send_confirm_link (struct smc_link*,int ) ;
 scalar_t__ smc_reg_rmb (struct smc_link*,int ,int) ;
 int smc_wr_remember_qp_attr (struct smc_link*) ;
 struct net* sock_net (int ) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int smc_clnt_conf_first_link(struct smc_sock *smc)
{
 struct net *net = sock_net(smc->clcsock->sk);
 struct smc_link_group *lgr = smc->conn.lgr;
 struct smc_link *link;
 int rest;
 int rc;

 link = &lgr->lnk[SMC_SINGLE_LINK];

 rest = wait_for_completion_interruptible_timeout(
  &link->llc_confirm,
  SMC_LLC_WAIT_FIRST_TIME);
 if (rest <= 0) {
  struct smc_clc_msg_decline dclc;

  rc = smc_clc_wait_msg(smc, &dclc, sizeof(dclc),
          SMC_CLC_DECLINE, CLC_WAIT_TIME_SHORT);
  return rc == -EAGAIN ? SMC_CLC_DECL_TIMEOUT_CL : rc;
 }

 if (link->llc_confirm_rc)
  return SMC_CLC_DECL_RMBE_EC;

 rc = smc_ib_modify_qp_rts(link);
 if (rc)
  return SMC_CLC_DECL_ERR_RDYLNK;

 smc_wr_remember_qp_attr(link);

 if (smc_reg_rmb(link, smc->conn.rmb_desc, 0))
  return SMC_CLC_DECL_ERR_REGRMB;


 rc = smc_llc_send_confirm_link(link, SMC_LLC_RESP);
 if (rc < 0)
  return SMC_CLC_DECL_TIMEOUT_CL;


 rest = wait_for_completion_interruptible_timeout(&link->llc_add,
        SMC_LLC_WAIT_TIME);
 if (rest <= 0) {
  struct smc_clc_msg_decline dclc;

  rc = smc_clc_wait_msg(smc, &dclc, sizeof(dclc),
          SMC_CLC_DECLINE, CLC_WAIT_TIME_SHORT);
  return rc == -EAGAIN ? SMC_CLC_DECL_TIMEOUT_AL : rc;
 }


 rc = smc_llc_send_add_link(link,
       link->smcibdev->mac[link->ibport - 1],
       link->gid, SMC_LLC_RESP);
 if (rc < 0)
  return SMC_CLC_DECL_TIMEOUT_AL;

 smc_llc_link_active(link, net->ipv4.sysctl_tcp_keepalive_time);

 return 0;
}
