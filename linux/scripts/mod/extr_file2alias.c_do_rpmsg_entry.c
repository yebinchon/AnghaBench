
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD_ADDR (void*,int ,int *) ;
 char* RPMSG_DEVICE_MODALIAS_FMT ;
 int * name ;
 int rpmsg_device_id ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int do_rpmsg_entry(const char *filename, void *symval,
     char *alias)
{
 DEF_FIELD_ADDR(symval, rpmsg_device_id, name);
 sprintf(alias, RPMSG_DEVICE_MODALIAS_FMT, *name);

 return 1;
}
