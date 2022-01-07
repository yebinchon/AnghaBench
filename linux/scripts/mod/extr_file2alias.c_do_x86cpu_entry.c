
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,scalar_t__) ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 scalar_t__ X86_FAMILY_ANY ;
 scalar_t__ X86_FEATURE_ANY ;
 scalar_t__ X86_MODEL_ANY ;
 scalar_t__ X86_VENDOR_ANY ;
 scalar_t__ family ;
 scalar_t__ feature ;
 scalar_t__ model ;
 int sprintf (char*,char*,scalar_t__) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ vendor ;
 int x86_cpu_id ;

__attribute__((used)) static int do_x86cpu_entry(const char *filename, void *symval,
      char *alias)
{
 DEF_FIELD(symval, x86_cpu_id, feature);
 DEF_FIELD(symval, x86_cpu_id, family);
 DEF_FIELD(symval, x86_cpu_id, model);
 DEF_FIELD(symval, x86_cpu_id, vendor);

 strcpy(alias, "cpu:type:x86,");
 ADD(alias, "ven", vendor != X86_VENDOR_ANY, vendor);
 ADD(alias, "fam", family != X86_FAMILY_ANY, family);
 ADD(alias, "mod", model != X86_MODEL_ANY, model);
 strcat(alias, ":feature:*");
 if (feature != X86_FEATURE_ANY)
  sprintf(alias + strlen(alias), "%04X*", feature);
 return 1;
}
