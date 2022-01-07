
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* keys; } ;
struct TYPE_6__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {int airtime_flags; TYPE_4__* ops; TYPE_3__ debugfs; TYPE_2__ hw; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {scalar_t__ wake_tx_queue; } ;
struct TYPE_5__ {struct dentry* debugfsdir; } ;


 int DEBUGFS_ADD (int ) ;
 int DEBUGFS_ADD_MODE (int ,int) ;
 int DEBUGFS_DEVSTATS_ADD (int ) ;
 int DEBUGFS_STATS_ADD (int ) ;
 int aqm ;
 void* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_u16 (char*,int,struct dentry*,int *) ;
 int dot11ACKFailureCount ;
 int dot11FCSErrorCount ;
 int dot11FailedCount ;
 int dot11FrameDuplicateCount ;
 int dot11MulticastReceivedFrameCount ;
 int dot11MulticastTransmittedFrameCount ;
 int dot11MultipleRetryCount ;
 int dot11RTSFailureCount ;
 int dot11RTSSuccessCount ;
 int dot11ReceivedFragmentCount ;
 int dot11RetryCount ;
 int dot11TransmittedFragmentCount ;
 int dot11TransmittedFrameCount ;
 int force_tx_status ;
 int hwflags ;
 int misc ;
 int power ;
 int queues ;
 int rate_ctrl_alg ;
 int reset ;
 int rx_expand_skb_head_defrag ;
 int rx_handlers_drop ;
 int rx_handlers_drop_defrag ;
 int rx_handlers_drop_nullfunc ;
 int rx_handlers_fragments ;
 int rx_handlers_queued ;
 int total_ps_buffered ;
 int tx_expand_skb_head ;
 int tx_expand_skb_head_cloned ;
 int tx_handlers_drop ;
 int tx_handlers_drop_not_assoc ;
 int tx_handlers_drop_unauth_port ;
 int tx_handlers_drop_wep ;
 int tx_handlers_queued ;
 int tx_status_drop ;
 int user_power ;
 int wep_iv ;

void debugfs_hw_add(struct ieee80211_local *local)
{
 struct dentry *phyd = local->hw.wiphy->debugfsdir;
 struct dentry *statsd;

 if (!phyd)
  return;

 local->debugfs.keys = debugfs_create_dir("keys", phyd);

 DEBUGFS_ADD(total_ps_buffered);
 DEBUGFS_ADD(wep_iv);
 DEBUGFS_ADD(rate_ctrl_alg);
 DEBUGFS_ADD(queues);
 DEBUGFS_ADD(misc);



 DEBUGFS_ADD(hwflags);
 DEBUGFS_ADD(user_power);
 DEBUGFS_ADD(power);
 DEBUGFS_ADD_MODE(force_tx_status, 0600);

 if (local->ops->wake_tx_queue)
  DEBUGFS_ADD_MODE(aqm, 0600);

 debugfs_create_u16("airtime_flags", 0600,
      phyd, &local->airtime_flags);

 statsd = debugfs_create_dir("statistics", phyd);


 if (!statsd)
  return;
 DEBUGFS_DEVSTATS_ADD(dot11ACKFailureCount);
 DEBUGFS_DEVSTATS_ADD(dot11RTSFailureCount);
 DEBUGFS_DEVSTATS_ADD(dot11FCSErrorCount);
 DEBUGFS_DEVSTATS_ADD(dot11RTSSuccessCount);
}
