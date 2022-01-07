
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD (void*,int ,int) ;
 int mips_cdmm_device_id ;
 int sprintf (char*,char*,int) ;
 int type ;

__attribute__((used)) static int do_mips_cdmm_entry(const char *filename,
         void *symval, char *alias)
{
 DEF_FIELD(symval, mips_cdmm_device_id, type);

 sprintf(alias, "mipscdmm:t%02X*", type);
 return 1;
}
