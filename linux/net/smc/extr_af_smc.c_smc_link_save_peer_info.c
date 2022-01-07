
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_link {int peer_mtu; void* peer_psn; int peer_mac; int peer_gid; void* peer_qpn; } ;
struct TYPE_2__ {int mac; int gid; } ;
struct smc_clc_msg_accept_confirm {int qp_mtu; int psn; TYPE_1__ lcl; int qpn; } ;


 int SMC_GID_SIZE ;
 int memcpy (int ,int ,int) ;
 void* ntoh24 (int ) ;

__attribute__((used)) static void smc_link_save_peer_info(struct smc_link *link,
        struct smc_clc_msg_accept_confirm *clc)
{
 link->peer_qpn = ntoh24(clc->qpn);
 memcpy(link->peer_gid, clc->lcl.gid, SMC_GID_SIZE);
 memcpy(link->peer_mac, clc->lcl.mac, sizeof(link->peer_mac));
 link->peer_psn = ntoh24(clc->psn);
 link->peer_mtu = clc->qp_mtu;
}
