
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cmp_connection {scalar_t__ direction; int pcr_index; } ;


 scalar_t__ CMP_INPUT ;
 scalar_t__ CSR_IPCR (int ) ;
 scalar_t__ CSR_OPCR (int ) ;
 scalar_t__ CSR_REGISTER_BASE ;

__attribute__((used)) static u64 pcr_address(struct cmp_connection *c)
{
 if (c->direction == CMP_INPUT)
  return CSR_REGISTER_BASE + CSR_IPCR(c->pcr_index);
 else
  return CSR_REGISTER_BASE + CSR_OPCR(c->pcr_index);
}
