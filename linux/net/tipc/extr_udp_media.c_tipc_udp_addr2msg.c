
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_media_addr {int dummy; } ;
struct tipc_media_addr {int value; } ;


 int TIPC_MEDIA_ADDR_OFFSET ;
 int TIPC_MEDIA_INFO_SIZE ;
 size_t TIPC_MEDIA_TYPE_OFFSET ;
 char TIPC_MEDIA_TYPE_UDP ;
 int memcpy (char*,int ,int) ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static int tipc_udp_addr2msg(char *msg, struct tipc_media_addr *a)
{
 memset(msg, 0, TIPC_MEDIA_INFO_SIZE);
 msg[TIPC_MEDIA_TYPE_OFFSET] = TIPC_MEDIA_TYPE_UDP;
 memcpy(msg + TIPC_MEDIA_ADDR_OFFSET, a->value,
        sizeof(struct udp_media_addr));
 return 0;
}
