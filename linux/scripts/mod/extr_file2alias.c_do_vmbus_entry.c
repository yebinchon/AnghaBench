
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * b; } ;


 int DEF_FIELD_ADDR (void*,int ,TYPE_1__*) ;
 int TO_NATIVE (int ) ;
 TYPE_1__* guid ;
 int hv_vmbus_device_id ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int do_vmbus_entry(const char *filename, void *symval,
     char *alias)
{
 int i;
 DEF_FIELD_ADDR(symval, hv_vmbus_device_id, guid);
 char guid_name[(sizeof(*guid) + 1) * 2];

 for (i = 0; i < (sizeof(*guid) * 2); i += 2)
  sprintf(&guid_name[i], "%02x", TO_NATIVE((guid->b)[i/2]));

 strcpy(alias, "vmbus:");
 strcat(alias, guid_name);

 return 1;
}
