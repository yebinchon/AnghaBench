
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,scalar_t__) ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 int add_wildcard (char*) ;
 scalar_t__ api_version ;
 int hda_device_id ;
 scalar_t__ rev_id ;
 int strcpy (char*,char*) ;
 scalar_t__ vendor_id ;

__attribute__((used)) static int do_hda_entry(const char *filename, void *symval, char *alias)
{
 DEF_FIELD(symval, hda_device_id, vendor_id);
 DEF_FIELD(symval, hda_device_id, rev_id);
 DEF_FIELD(symval, hda_device_id, api_version);

 strcpy(alias, "hdaudio:");
 ADD(alias, "v", vendor_id != 0, vendor_id);
 ADD(alias, "r", rev_id != 0, rev_id);
 ADD(alias, "a", api_version != 0, api_version);

 add_wildcard(alias);
 return 1;
}
