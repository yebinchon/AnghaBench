
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smc_sock {TYPE_3__* clcsock; int fallback_rsn; scalar_t__ use_fallback; } ;
struct smc_init_info {int member_0; } ;
struct TYPE_4__ {int path; } ;
struct smc_clc_msg_accept_confirm {TYPE_1__ hdr; } ;
struct TYPE_6__ {int sk; } ;
struct TYPE_5__ {int syn_smc; } ;


 int SMC_CLC_DECL_GETVLANERR ;
 int SMC_CLC_DECL_IPSEC ;
 int SMC_CLC_DECL_MODEUNSUPP ;
 int SMC_CLC_DECL_NOSMCDEV ;
 int SMC_CLC_DECL_PEERNOSMC ;
 int SMC_TYPE_B ;
 int SMC_TYPE_D ;
 int SMC_TYPE_R ;
 int smc_connect_clc (struct smc_sock*,int,struct smc_clc_msg_accept_confirm*,struct smc_init_info*) ;
 int smc_connect_decline_fallback (struct smc_sock*,int) ;
 int smc_connect_fallback (struct smc_sock*,int ) ;
 int smc_connect_ism (struct smc_sock*,struct smc_clc_msg_accept_confirm*,struct smc_init_info*) ;
 int smc_connect_ism_vlan_cleanup (struct smc_sock*,int,struct smc_init_info*) ;
 int smc_connect_ism_vlan_setup (struct smc_sock*,struct smc_init_info*) ;
 int smc_connect_rdma (struct smc_sock*,struct smc_clc_msg_accept_confirm*,struct smc_init_info*) ;
 int smc_find_ism_device (struct smc_sock*,struct smc_init_info*) ;
 int smc_find_rdma_device (struct smc_sock*,struct smc_init_info*) ;
 scalar_t__ smc_vlan_by_tcpsk (TYPE_3__*,struct smc_init_info*) ;
 TYPE_2__* tcp_sk (int ) ;
 scalar_t__ using_ipsec (struct smc_sock*) ;

__attribute__((used)) static int __smc_connect(struct smc_sock *smc)
{
 bool ism_supported = 0, rdma_supported = 0;
 struct smc_clc_msg_accept_confirm aclc;
 struct smc_init_info ini = {0};
 int smc_type;
 int rc = 0;

 if (smc->use_fallback)
  return smc_connect_fallback(smc, smc->fallback_rsn);


 if (!tcp_sk(smc->clcsock->sk)->syn_smc)
  return smc_connect_fallback(smc, SMC_CLC_DECL_PEERNOSMC);


 if (using_ipsec(smc))
  return smc_connect_decline_fallback(smc, SMC_CLC_DECL_IPSEC);


 if (smc_vlan_by_tcpsk(smc->clcsock, &ini))
  return smc_connect_decline_fallback(smc,
          SMC_CLC_DECL_GETVLANERR);


 if (!smc_find_ism_device(smc, &ini) &&
     !smc_connect_ism_vlan_setup(smc, &ini)) {

  ism_supported = 1;
  smc_type = SMC_TYPE_D;
 }


 if (!smc_find_rdma_device(smc, &ini)) {

  rdma_supported = 1;
  if (ism_supported)
   smc_type = SMC_TYPE_B;
  else
   smc_type = SMC_TYPE_R;
 }


 if (!rdma_supported && !ism_supported)
  return smc_connect_decline_fallback(smc, SMC_CLC_DECL_NOSMCDEV);


 rc = smc_connect_clc(smc, smc_type, &aclc, &ini);
 if (rc) {
  smc_connect_ism_vlan_cleanup(smc, ism_supported, &ini);
  return smc_connect_decline_fallback(smc, rc);
 }


 if (rdma_supported && aclc.hdr.path == SMC_TYPE_R)
  rc = smc_connect_rdma(smc, &aclc, &ini);
 else if (ism_supported && aclc.hdr.path == SMC_TYPE_D)
  rc = smc_connect_ism(smc, &aclc, &ini);
 else
  rc = SMC_CLC_DECL_MODEUNSUPP;
 if (rc) {
  smc_connect_ism_vlan_cleanup(smc, ism_supported, &ini);
  return smc_connect_decline_fallback(smc, rc);
 }

 smc_connect_ism_vlan_cleanup(smc, ism_supported, &ini);
 return 0;
}
