
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int directory; } ;
typedef int model ;


 int ARRAY_SIZE (char const* const*) ;
 int CSR_MODEL ;
 int fw_csr_string (int ,int ,char*,int) ;
 scalar_t__ match_string (char const* const*,int ,char*) ;

__attribute__((used)) static bool detect_loud_models(struct fw_unit *unit)
{
 const char *const models[] = {
  "Onyxi",
  "Onyx-i",
  "Onyx 1640i",
  "d.Pro",
  "Mackie Onyx Satellite",
  "Tapco LINK.firewire 4x6",
  "U.420"};
 char model[32];
 int err;

 err = fw_csr_string(unit->directory, CSR_MODEL,
       model, sizeof(model));
 if (err < 0)
  return 0;

 return match_string(models, ARRAY_SIZE(models), model) >= 0;
}
