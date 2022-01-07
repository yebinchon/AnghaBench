
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phonet_protocol {TYPE_1__* prot; } ;
struct TYPE_2__ {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static inline void phonet_proto_put(const struct phonet_protocol *pp)
{
 module_put(pp->prot->owner);
}
