
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_media_addr {int broadcast; int media_id; int value; } ;
struct TYPE_2__ {int value; } ;
struct tipc_bearer {TYPE_1__ bcast_addr; } ;


 int INFINIBAND_ALEN ;
 int TIPC_MEDIA_TYPE_IB ;
 int memcmp (char*,int ,int ) ;
 int memcpy (int ,char*,int ) ;
 int memset (struct tipc_media_addr*,int ,int) ;

__attribute__((used)) static int tipc_ib_raw2addr(struct tipc_bearer *b,
       struct tipc_media_addr *addr,
       char *msg)
{
 memset(addr, 0, sizeof(*addr));
 memcpy(addr->value, msg, INFINIBAND_ALEN);
 addr->media_id = TIPC_MEDIA_TYPE_IB;
 addr->broadcast = !memcmp(msg, b->bcast_addr.value,
      INFINIBAND_ALEN);
 return 0;
}
