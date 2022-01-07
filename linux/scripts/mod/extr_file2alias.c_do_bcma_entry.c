
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD (char*,char*,int,scalar_t__) ;
 scalar_t__ BCMA_ANY_CLASS ;
 scalar_t__ BCMA_ANY_ID ;
 scalar_t__ BCMA_ANY_MANUF ;
 scalar_t__ BCMA_ANY_REV ;
 int DEF_FIELD (void*,int ,scalar_t__) ;
 int add_wildcard (char*) ;
 int bcma_device_id ;
 scalar_t__ class ;
 scalar_t__ id ;
 scalar_t__ manuf ;
 scalar_t__ rev ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_bcma_entry(const char *filename,
    void *symval, char *alias)
{
 DEF_FIELD(symval, bcma_device_id, manuf);
 DEF_FIELD(symval, bcma_device_id, id);
 DEF_FIELD(symval, bcma_device_id, rev);
 DEF_FIELD(symval, bcma_device_id, class);

 strcpy(alias, "bcma:");
 ADD(alias, "m", manuf != BCMA_ANY_MANUF, manuf);
 ADD(alias, "id", id != BCMA_ANY_ID, id);
 ADD(alias, "rev", rev != BCMA_ANY_REV, rev);
 ADD(alias, "cl", class != BCMA_ANY_CLASS, class);
 add_wildcard(alias);
 return 1;
}
