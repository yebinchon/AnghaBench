
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* kmod_name; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_KMOD ;
 int SECCLASS_SYSTEM ;
 int SECINITSID_KERNEL ;
 int SYSTEM__MODULE_REQUEST ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 int current_sid () ;
 int selinux_state ;

__attribute__((used)) static int selinux_kernel_module_request(char *kmod_name)
{
 struct common_audit_data ad;

 ad.type = LSM_AUDIT_DATA_KMOD;
 ad.u.kmod_name = kmod_name;

 return avc_has_perm(&selinux_state,
       current_sid(), SECINITSID_KERNEL, SECCLASS_SYSTEM,
       SYSTEM__MODULE_REQUEST, &ad);
}
