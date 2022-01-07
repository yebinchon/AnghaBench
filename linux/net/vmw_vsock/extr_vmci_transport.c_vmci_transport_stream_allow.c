
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u32 ;
typedef int cid ;


 int ARRAY_SIZE (scalar_t__ const*) ;
 int BUILD_BUG_ON (int) ;


__attribute__((used)) static bool vmci_transport_stream_allow(u32 cid, u32 port)
{
 static const u32 non_socket_contexts[] = {
  128,
 };
 int i;

 BUILD_BUG_ON(sizeof(cid) != sizeof(*non_socket_contexts));

 for (i = 0; i < ARRAY_SIZE(non_socket_contexts); i++) {
  if (cid == non_socket_contexts[i])
   return 0;
 }

 return 1;
}
