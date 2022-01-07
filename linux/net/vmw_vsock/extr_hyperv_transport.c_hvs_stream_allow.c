
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MAX_HOST_LISTEN_PORT ;
 scalar_t__ VMADDR_CID_HOST ;

__attribute__((used)) static bool hvs_stream_allow(u32 cid, u32 port)
{







 if (port > MAX_HOST_LISTEN_PORT)
  return 0;

 if (cid == VMADDR_CID_HOST)
  return 1;

 return 0;
}
