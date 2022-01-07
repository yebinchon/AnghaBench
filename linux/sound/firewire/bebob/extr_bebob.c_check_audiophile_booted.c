
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int directory; } ;
typedef int name ;


 int CSR_MODEL ;
 scalar_t__ fw_csr_string (int ,int ,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static bool
check_audiophile_booted(struct fw_unit *unit)
{
 char name[28] = {0};

 if (fw_csr_string(unit->directory, CSR_MODEL, name, sizeof(name)) < 0)
  return 0;

 return strncmp(name, "FW Audiophile Bootloader", 24) != 0;
}
