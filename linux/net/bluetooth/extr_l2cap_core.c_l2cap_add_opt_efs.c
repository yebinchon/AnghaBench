
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conf_efs {int id; void* flush_to; void* acc_lat; void* sdu_itime; void* msdu; int stype; } ;
struct l2cap_chan {int mode; int local_id; int local_sdu_itime; int local_msdu; int local_stype; } ;
typedef int efs ;


 int L2CAP_CONF_EFS ;
 int L2CAP_DEFAULT_ACC_LAT ;
 int L2CAP_EFS_DEFAULT_FLUSH_TO ;


 int L2CAP_SERV_BESTEFFORT ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int l2cap_add_conf_opt (void**,int ,int,unsigned long,size_t) ;

__attribute__((used)) static void l2cap_add_opt_efs(void **ptr, struct l2cap_chan *chan, size_t size)
{
 struct l2cap_conf_efs efs;

 switch (chan->mode) {
 case 129:
  efs.id = chan->local_id;
  efs.stype = chan->local_stype;
  efs.msdu = cpu_to_le16(chan->local_msdu);
  efs.sdu_itime = cpu_to_le32(chan->local_sdu_itime);
  efs.acc_lat = cpu_to_le32(L2CAP_DEFAULT_ACC_LAT);
  efs.flush_to = cpu_to_le32(L2CAP_EFS_DEFAULT_FLUSH_TO);
  break;

 case 128:
  efs.id = 1;
  efs.stype = L2CAP_SERV_BESTEFFORT;
  efs.msdu = cpu_to_le16(chan->local_msdu);
  efs.sdu_itime = cpu_to_le32(chan->local_sdu_itime);
  efs.acc_lat = 0;
  efs.flush_to = 0;
  break;

 default:
  return;
 }

 l2cap_add_conf_opt(ptr, L2CAP_CONF_EFS, sizeof(efs),
      (unsigned long) &efs, size);
}
