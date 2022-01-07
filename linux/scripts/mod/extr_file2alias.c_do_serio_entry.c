
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,scalar_t__) ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 scalar_t__ SERIO_ANY ;
 int add_wildcard (char*) ;
 scalar_t__ extra ;
 scalar_t__ id ;
 scalar_t__ proto ;
 int serio_device_id ;
 int strcpy (char*,char*) ;
 scalar_t__ type ;

__attribute__((used)) static int do_serio_entry(const char *filename,
     void *symval, char *alias)
{
 DEF_FIELD(symval, serio_device_id, type);
 DEF_FIELD(symval, serio_device_id, proto);
 DEF_FIELD(symval, serio_device_id, id);
 DEF_FIELD(symval, serio_device_id, extra);

 strcpy(alias, "serio:");
 ADD(alias, "ty", type != SERIO_ANY, type);
 ADD(alias, "pr", proto != SERIO_ANY, proto);
 ADD(alias, "id", id != SERIO_ANY, id);
 ADD(alias, "ex", extra != SERIO_ANY, extra);

 add_wildcard(alias);
 return 1;
}
