
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_clc_msg_smcd {int dummy; } ;
struct smc_clc_msg_proposal {int iparea_offset; } ;


 int ntohs (int ) ;

__attribute__((used)) static inline struct smc_clc_msg_smcd *
smc_get_clc_msg_smcd(struct smc_clc_msg_proposal *prop)
{
 if (ntohs(prop->iparea_offset) != sizeof(struct smc_clc_msg_smcd))
  return ((void*)0);

 return (struct smc_clc_msg_smcd *)(prop + 1);
}
