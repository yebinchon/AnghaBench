
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_media_addr {int value; } ;


 int INFINIBAND_ALEN ;
 int TIPC_MEDIA_INFO_SIZE ;
 int memcpy (char*,int ,int ) ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static int tipc_ib_addr2msg(char *msg, struct tipc_media_addr *addr)
{
 memset(msg, 0, TIPC_MEDIA_INFO_SIZE);
 memcpy(msg, addr->value, INFINIBAND_ALEN);
 return 0;
}
