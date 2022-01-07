
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,scalar_t__) ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 scalar_t__ SSB_ANY_ID ;
 scalar_t__ SSB_ANY_REV ;
 scalar_t__ SSB_ANY_VENDOR ;
 int add_wildcard (char*) ;
 scalar_t__ coreid ;
 scalar_t__ revision ;
 int ssb_device_id ;
 int strcpy (char*,char*) ;
 scalar_t__ vendor ;

__attribute__((used)) static int do_ssb_entry(const char *filename,
   void *symval, char *alias)
{
 DEF_FIELD(symval, ssb_device_id, vendor);
 DEF_FIELD(symval, ssb_device_id, coreid);
 DEF_FIELD(symval, ssb_device_id, revision);

 strcpy(alias, "ssb:");
 ADD(alias, "v", vendor != SSB_ANY_VENDOR, vendor);
 ADD(alias, "id", coreid != SSB_ANY_ID, coreid);
 ADD(alias, "rev", revision != SSB_ANY_REV, revision);
 add_wildcard(alias);
 return 1;
}
