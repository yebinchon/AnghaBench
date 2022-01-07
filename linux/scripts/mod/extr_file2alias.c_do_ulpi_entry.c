
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD (void*,int ,int) ;
 int product ;
 int sprintf (char*,char*,int,int) ;
 int ulpi_device_id ;
 int vendor ;

__attribute__((used)) static int do_ulpi_entry(const char *filename, void *symval,
    char *alias)
{
 DEF_FIELD(symval, ulpi_device_id, vendor);
 DEF_FIELD(symval, ulpi_device_id, product);

 sprintf(alias, "ulpi:v%04xp%04x", vendor, product);

 return 1;
}
