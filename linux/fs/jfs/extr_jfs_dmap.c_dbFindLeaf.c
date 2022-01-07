
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* dmt_stree; int dmt_leafidx; int dmt_height; } ;
typedef TYPE_1__ dmtree_t ;


 int ENOSPC ;
 size_t ROOT ;
 int assert (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx)
{
 int ti, n = 0, k, x = 0;




 if (l2nb > tp->dmt_stree[ROOT])
  return -ENOSPC;





 for (k = le32_to_cpu(tp->dmt_height), ti = 1;
      k > 0; k--, ti = ((ti + n) << 2) + 1) {



  for (x = ti, n = 0; n < 4; n++) {



   if (l2nb <= tp->dmt_stree[x + n])
    break;
  }




  assert(n < 4);
 }




 *leafidx = x + n - le32_to_cpu(tp->dmt_leafidx);

 return (0);
}
