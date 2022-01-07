
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,int) ;
 int DEF_FIELD (void*,int ,int) ;
 int IEEE1394_MATCH_MODEL_ID ;
 int IEEE1394_MATCH_SPECIFIER_ID ;
 int IEEE1394_MATCH_VENDOR_ID ;
 int IEEE1394_MATCH_VERSION ;
 int add_wildcard (char*) ;
 int ieee1394_device_id ;
 int match_flags ;
 int model_id ;
 int specifier_id ;
 int strcpy (char*,char*) ;
 int vendor_id ;
 int version ;

__attribute__((used)) static int do_ieee1394_entry(const char *filename,
        void *symval, char *alias)
{
 DEF_FIELD(symval, ieee1394_device_id, match_flags);
 DEF_FIELD(symval, ieee1394_device_id, vendor_id);
 DEF_FIELD(symval, ieee1394_device_id, model_id);
 DEF_FIELD(symval, ieee1394_device_id, specifier_id);
 DEF_FIELD(symval, ieee1394_device_id, version);

 strcpy(alias, "ieee1394:");
 ADD(alias, "ven", match_flags & IEEE1394_MATCH_VENDOR_ID,
     vendor_id);
 ADD(alias, "mo", match_flags & IEEE1394_MATCH_MODEL_ID,
     model_id);
 ADD(alias, "sp", match_flags & IEEE1394_MATCH_SPECIFIER_ID,
     specifier_id);
 ADD(alias, "ver", match_flags & IEEE1394_MATCH_VERSION,
     version);

 add_wildcard(alias);
 return 1;
}
