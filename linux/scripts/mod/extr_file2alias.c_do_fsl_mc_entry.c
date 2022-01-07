
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD (void*,int ,int) ;
 int DEF_FIELD_ADDR (void*,int ,char**) ;
 int fsl_mc_device_id ;
 char** obj_type ;
 int sprintf (char*,char*,int,char*) ;
 int vendor ;

__attribute__((used)) static int do_fsl_mc_entry(const char *filename, void *symval,
      char *alias)
{
 DEF_FIELD(symval, fsl_mc_device_id, vendor);
 DEF_FIELD_ADDR(symval, fsl_mc_device_id, obj_type);

 sprintf(alias, "fsl-mc:v%08Xd%s", vendor, *obj_type);
 return 1;
}
