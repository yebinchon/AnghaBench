
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct smcd_dev {int dummy; } ;
struct smc_link_group {scalar_t__ peer_gid; struct smcd_dev* smcd; } ;



__attribute__((used)) static bool smcd_lgr_match(struct smc_link_group *lgr,
      struct smcd_dev *smcismdev, u64 peer_gid)
{
 return lgr->peer_gid == peer_gid && lgr->smcd == smcismdev;
}
