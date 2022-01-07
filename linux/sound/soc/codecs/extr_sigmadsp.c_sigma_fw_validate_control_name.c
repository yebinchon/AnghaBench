
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool sigma_fw_validate_control_name(const char *name, unsigned int len)
{
 unsigned int i;

 for (i = 0; i < len; i++) {

  if (name[i] < ' ' || name[i] > '~')
   return 0;
 }

 return 1;
}
