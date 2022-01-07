
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,scalar_t__) ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 scalar_t__ ZORRO_WILDCARD ;
 scalar_t__ id ;
 int strcpy (char*,char*) ;
 int zorro_device_id ;

__attribute__((used)) static int do_zorro_entry(const char *filename, void *symval,
     char *alias)
{
 DEF_FIELD(symval, zorro_device_id, id);
 strcpy(alias, "zorro:");
 ADD(alias, "i", id != ZORRO_WILDCARD, id);
 return 1;
}
