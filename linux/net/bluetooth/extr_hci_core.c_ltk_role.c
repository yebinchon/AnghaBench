
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ HCI_ROLE_MASTER ;
 scalar_t__ HCI_ROLE_SLAVE ;
 scalar_t__ SMP_LTK ;

__attribute__((used)) static u8 ltk_role(u8 type)
{
 if (type == SMP_LTK)
  return HCI_ROLE_MASTER;

 return HCI_ROLE_SLAVE;
}
