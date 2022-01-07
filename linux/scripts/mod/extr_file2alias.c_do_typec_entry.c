
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,scalar_t__) ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 scalar_t__ TYPEC_ANY_MODE ;
 scalar_t__ mode ;
 int sprintf (char*,char*,int) ;
 int svid ;
 int typec_device_id ;

__attribute__((used)) static int do_typec_entry(const char *filename, void *symval, char *alias)
{
 DEF_FIELD(symval, typec_device_id, svid);
 DEF_FIELD(symval, typec_device_id, mode);

 sprintf(alias, "typec:id%04X", svid);
 ADD(alias, "m", mode != TYPEC_ANY_MODE, mode);

 return 1;
}
