
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int vmci_get_context_id () ;

__attribute__((used)) static u32 vmci_transport_get_local_cid(void)
{
 return vmci_get_context_id();
}
