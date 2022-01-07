
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_media_addr {int value; } ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int tipc_ib_addr2str(struct tipc_media_addr *a, char *str_buf,
       int str_size)
{
 if (str_size < 60)
  return 1;

 sprintf(str_buf, "%20phC", a->value);

 return 0;
}
