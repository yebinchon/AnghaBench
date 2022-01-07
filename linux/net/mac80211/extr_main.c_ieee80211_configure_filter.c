
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_local {unsigned int filter_flags; int filter_lock; int mc_list; scalar_t__ fif_pspoll; scalar_t__ fif_other_bss; scalar_t__ fif_control; scalar_t__ fif_plcpfail; scalar_t__ fif_fcsfail; scalar_t__ probe_req_reg; scalar_t__ fif_probe_req; int scanning; scalar_t__ monitors; int iff_allmultis; } ;


 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_FCSFAIL ;
 unsigned int FIF_OTHER_BSS ;
 unsigned int FIF_PLCPFAIL ;
 unsigned int FIF_PROBE_REQ ;
 unsigned int FIF_PSPOLL ;
 int SCAN_ONCHANNEL_SCANNING ;
 int SCAN_SW_SCANNING ;
 int WARN_ON (unsigned int) ;
 scalar_t__ atomic_read (int *) ;
 int drv_configure_filter (struct ieee80211_local*,unsigned int,unsigned int*,int ) ;
 int drv_prepare_multicast (struct ieee80211_local*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void ieee80211_configure_filter(struct ieee80211_local *local)
{
 u64 mc;
 unsigned int changed_flags;
 unsigned int new_flags = 0;

 if (atomic_read(&local->iff_allmultis))
  new_flags |= FIF_ALLMULTI;

 if (local->monitors || test_bit(SCAN_SW_SCANNING, &local->scanning) ||
     test_bit(SCAN_ONCHANNEL_SCANNING, &local->scanning))
  new_flags |= FIF_BCN_PRBRESP_PROMISC;

 if (local->fif_probe_req || local->probe_req_reg)
  new_flags |= FIF_PROBE_REQ;

 if (local->fif_fcsfail)
  new_flags |= FIF_FCSFAIL;

 if (local->fif_plcpfail)
  new_flags |= FIF_PLCPFAIL;

 if (local->fif_control)
  new_flags |= FIF_CONTROL;

 if (local->fif_other_bss)
  new_flags |= FIF_OTHER_BSS;

 if (local->fif_pspoll)
  new_flags |= FIF_PSPOLL;

 spin_lock_bh(&local->filter_lock);
 changed_flags = local->filter_flags ^ new_flags;

 mc = drv_prepare_multicast(local, &local->mc_list);
 spin_unlock_bh(&local->filter_lock);


 new_flags |= (1<<31);

 drv_configure_filter(local, changed_flags, &new_flags, mc);

 WARN_ON(new_flags & (1<<31));

 local->filter_flags = new_flags & ~(1<<31);
}
