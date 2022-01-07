
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,scalar_t__) ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 int add_wildcard (char*) ;
 scalar_t__ mfg_id ;
 scalar_t__ part_id ;
 int sdw_device_id ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_sdw_entry(const char *filename, void *symval, char *alias)
{
 DEF_FIELD(symval, sdw_device_id, mfg_id);
 DEF_FIELD(symval, sdw_device_id, part_id);

 strcpy(alias, "sdw:");
 ADD(alias, "m", mfg_id != 0, mfg_id);
 ADD(alias, "p", part_id != 0, part_id);

 add_wildcard(alias);
 return 1;
}
