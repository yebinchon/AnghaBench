
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smc_clc_msg_proposal_prefix {int dummy; } ;
struct smc_clc_msg_proposal {int iparea_offset; } ;


 int ntohs (int ) ;

__attribute__((used)) static inline struct smc_clc_msg_proposal_prefix *
smc_clc_proposal_get_prefix(struct smc_clc_msg_proposal *pclc)
{
 return (struct smc_clc_msg_proposal_prefix *)
        ((u8 *)pclc + sizeof(*pclc) + ntohs(pclc->iparea_offset));
}
