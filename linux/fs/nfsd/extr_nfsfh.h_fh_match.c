
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fh_pad; } ;
struct knfsd_fh {scalar_t__ fh_size; TYPE_1__ fh_base; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline bool fh_match(struct knfsd_fh *fh1, struct knfsd_fh *fh2)
{
 if (fh1->fh_size != fh2->fh_size)
  return 0;
 if (memcmp(fh1->fh_base.fh_pad, fh2->fh_base.fh_pad, fh1->fh_size) != 0)
  return 0;
 return 1;
}
