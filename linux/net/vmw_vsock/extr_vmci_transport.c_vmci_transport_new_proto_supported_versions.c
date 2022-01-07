
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PROTOCOL_OVERRIDE ;
 int VSOCK_PROTO_ALL_SUPPORTED ;

__attribute__((used)) static u16 vmci_transport_new_proto_supported_versions(void)
{
 if (PROTOCOL_OVERRIDE != -1)
  return PROTOCOL_OVERRIDE;

 return VSOCK_PROTO_ALL_SUPPORTED;
}
