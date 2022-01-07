
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD (void*,int ,int) ;
 int css_device_id ;
 int sprintf (char*,char*,int) ;
 int type ;

__attribute__((used)) static int do_css_entry(const char *filename,
   void *symval, char *alias)
{
 DEF_FIELD(symval, css_device_id, type);

 sprintf(alias, "css:t%01X", type);
 return 1;
}
