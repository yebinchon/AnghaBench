
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* b; } ;
typedef TYPE_1__ uuid_le ;


 int sprintf (char*,char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int strlen (char*) ;

__attribute__((used)) static inline void add_uuid(char *str, uuid_le uuid)
{
 int len = strlen(str);

 sprintf(str + len, "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x",
  uuid.b[3], uuid.b[2], uuid.b[1], uuid.b[0],
  uuid.b[5], uuid.b[4], uuid.b[7], uuid.b[6],
  uuid.b[8], uuid.b[9], uuid.b[10], uuid.b[11],
  uuid.b[12], uuid.b[13], uuid.b[14], uuid.b[15]);
}
