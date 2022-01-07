
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sec_path {int len; TYPE_2__** xvec; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 scalar_t__ XFRM_MODE_TRANSPORT ;

__attribute__((used)) static inline int secpath_has_nontransport(const struct sec_path *sp, int k, int *idxp)
{
 for (; k < sp->len; k++) {
  if (sp->xvec[k]->props.mode != XFRM_MODE_TRANSPORT) {
   *idxp = k;
   return 1;
  }
 }

 return 0;
}
