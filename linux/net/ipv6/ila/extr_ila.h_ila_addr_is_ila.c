
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct ila_addr {TYPE_1__ ident; } ;


 scalar_t__ ILA_ATYPE_IID ;

__attribute__((used)) static inline bool ila_addr_is_ila(struct ila_addr *iaddr)
{
 return (iaddr->ident.type != ILA_ATYPE_IID);
}
