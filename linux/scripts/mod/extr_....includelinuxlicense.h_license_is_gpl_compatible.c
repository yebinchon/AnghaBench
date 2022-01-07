
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static inline int license_is_gpl_compatible(const char *license)
{
 return (strcmp(license, "GPL") == 0
  || strcmp(license, "GPL v2") == 0
  || strcmp(license, "GPL and additional rights") == 0
  || strcmp(license, "Dual BSD/GPL") == 0
  || strcmp(license, "Dual MIT/GPL") == 0
  || strcmp(license, "Dual MPL/GPL") == 0);
}
