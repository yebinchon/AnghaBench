
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct l2cap_conf_rfc {void* monitor_timeout; void* retrans_timeout; } ;
struct l2cap_chan {scalar_t__ local_amp_id; TYPE_1__* hs_hcon; } ;
struct TYPE_4__ {int amp_be_flush_to; } ;
struct TYPE_3__ {TYPE_2__* hdev; } ;


 scalar_t__ AMP_ID_BREDR ;
 int DIV_ROUND_UP_ULL (int,int) ;
 int L2CAP_DEFAULT_MONITOR_TO ;
 int L2CAP_DEFAULT_RETRANS_TO ;
 void* cpu_to_le16 (int ) ;

__attribute__((used)) static void __l2cap_set_ertm_timeouts(struct l2cap_chan *chan,
          struct l2cap_conf_rfc *rfc)
{
 if (chan->local_amp_id != AMP_ID_BREDR && chan->hs_hcon) {
  u64 ertm_to = chan->hs_hcon->hdev->amp_be_flush_to;
  ertm_to = DIV_ROUND_UP_ULL(ertm_to, 1000);





  ertm_to = 3 * ertm_to + 500;

  if (ertm_to > 0xffff)
   ertm_to = 0xffff;

  rfc->retrans_timeout = cpu_to_le16((u16) ertm_to);
  rfc->monitor_timeout = rfc->retrans_timeout;
 } else {
  rfc->retrans_timeout = cpu_to_le16(L2CAP_DEFAULT_RETRANS_TO);
  rfc->monitor_timeout = cpu_to_le16(L2CAP_DEFAULT_MONITOR_TO);
 }
}
