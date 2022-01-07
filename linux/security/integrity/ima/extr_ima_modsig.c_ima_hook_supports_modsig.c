
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;






bool ima_hook_supports_modsig(enum ima_hooks func)
{
 switch (func) {
 case 129:
 case 130:
 case 128:
  return 1;
 default:
  return 0;
 }
}
