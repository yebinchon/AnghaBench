
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_rbm {scalar_t__ rgd; scalar_t__ bii; scalar_t__ offset; } ;



__attribute__((used)) static inline bool gfs2_rbm_eq(const struct gfs2_rbm *rbm1,
          const struct gfs2_rbm *rbm2)
{
 return (rbm1->rgd == rbm2->rgd) && (rbm1->bii == rbm2->bii) &&
        (rbm1->offset == rbm2->offset);
}
