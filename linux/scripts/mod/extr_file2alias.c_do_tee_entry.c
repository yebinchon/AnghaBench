
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* b; } ;


 int DEF_FIELD (void*,int ,TYPE_1__) ;
 int add_wildcard (char*) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int tee_client_device_id ;
 TYPE_1__ uuid ;

__attribute__((used)) static int do_tee_entry(const char *filename, void *symval, char *alias)
{
 DEF_FIELD(symval, tee_client_device_id, uuid);

 sprintf(alias, "tee:%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x",
  uuid.b[0], uuid.b[1], uuid.b[2], uuid.b[3], uuid.b[4],
  uuid.b[5], uuid.b[6], uuid.b[7], uuid.b[8], uuid.b[9],
  uuid.b[10], uuid.b[11], uuid.b[12], uuid.b[13], uuid.b[14],
  uuid.b[15]);

 add_wildcard(alias);
 return 1;
}
