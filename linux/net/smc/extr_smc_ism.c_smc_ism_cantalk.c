
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct smcd_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* query_remote_gid ) (struct smcd_dev*,int ,int,unsigned short) ;} ;


 int stub1 (struct smcd_dev*,int ,int,unsigned short) ;

int smc_ism_cantalk(u64 peer_gid, unsigned short vlan_id, struct smcd_dev *smcd)
{
 return smcd->ops->query_remote_gid(smcd, peer_gid, vlan_id ? 1 : 0,
        vlan_id);
}
