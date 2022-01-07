
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;


 int FIRMWARE_CHECK ;
 int IMA_APPRAISE_FIRMWARE ;
 int IMA_APPRAISE_KEXEC ;
 int IMA_APPRAISE_MODULES ;
 int IMA_APPRAISE_POLICY ;
 int KEXEC_KERNEL_CHECK ;
 int MODULE_CHECK ;
 int POLICY_CHECK ;

__attribute__((used)) static int ima_appraise_flag(enum ima_hooks func)
{
 if (func == MODULE_CHECK)
  return IMA_APPRAISE_MODULES;
 else if (func == FIRMWARE_CHECK)
  return IMA_APPRAISE_FIRMWARE;
 else if (func == POLICY_CHECK)
  return IMA_APPRAISE_POLICY;
 else if (func == KEXEC_KERNEL_CHECK)
  return IMA_APPRAISE_KEXEC;
 return 0;
}
