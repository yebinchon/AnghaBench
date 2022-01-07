
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_3__ {int dim; int flags; } ;
struct TYPE_4__ {int* flags; TYPE_1__ compat; } ;
struct xt_set_info_v0 {TYPE_2__ u; } ;


 int IPSET_DIM_MAX ;
 int IPSET_DIM_ZERO ;
 int IPSET_INV_MATCH ;
 int IPSET_MATCH_INV ;
 int IPSET_SRC ;

__attribute__((used)) static void
compat_flags(struct xt_set_info_v0 *info)
{
 u_int8_t i;


 info->u.compat.dim = IPSET_DIM_ZERO;
 if (info->u.flags[0] & IPSET_MATCH_INV)
  info->u.compat.flags |= IPSET_INV_MATCH;
 for (i = 0; i < IPSET_DIM_MAX - 1 && info->u.flags[i]; i++) {
  info->u.compat.dim++;
  if (info->u.flags[i] & IPSET_SRC)
   info->u.compat.flags |= (1 << info->u.compat.dim);
 }
}
