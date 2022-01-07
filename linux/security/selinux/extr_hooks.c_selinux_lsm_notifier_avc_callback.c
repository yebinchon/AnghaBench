
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ AVC_CALLBACK_RESET ;
 int LSM_POLICY_CHANGE ;
 int call_blocking_lsm_notifier (int ,int *) ;
 int sel_ib_pkey_flush () ;

__attribute__((used)) static int selinux_lsm_notifier_avc_callback(u32 event)
{
 if (event == AVC_CALLBACK_RESET) {
  sel_ib_pkey_flush();
  call_blocking_lsm_notifier(LSM_POLICY_CHANGE, ((void*)0));
 }

 return 0;
}
