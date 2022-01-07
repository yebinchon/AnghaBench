
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD (void*,int ,int) ;
 int ap_device_id ;
 int dev_type ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int do_ap_entry(const char *filename,
         void *symval, char *alias)
{
 DEF_FIELD(symval, ap_device_id, dev_type);

 sprintf(alias, "ap:t%02X*", dev_type);
 return 1;
}
