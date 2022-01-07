
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* level; } ;
struct context {TYPE_2__ range; } ;
struct TYPE_3__ {int cat; int sens; } ;


 int ebitmap_cpy (int *,int *) ;
 int ebitmap_destroy (int *) ;

__attribute__((used)) static inline int mls_context_cpy_high(struct context *dst, struct context *src)
{
 int rc;

 dst->range.level[0].sens = src->range.level[1].sens;
 rc = ebitmap_cpy(&dst->range.level[0].cat, &src->range.level[1].cat);
 if (rc)
  goto out;

 dst->range.level[1].sens = src->range.level[1].sens;
 rc = ebitmap_cpy(&dst->range.level[1].cat, &src->range.level[1].cat);
 if (rc)
  ebitmap_destroy(&dst->range.level[0].cat);
out:
 return rc;
}
