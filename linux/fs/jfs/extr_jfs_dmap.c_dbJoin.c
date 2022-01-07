
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s8 ;
struct TYPE_4__ {int dmt_budmin; int* dmt_stree; int dmt_nleafs; int dmt_leafidx; } ;
typedef TYPE_1__ dmtree_t ;


 int BUDSIZE (int,int) ;
 int EIO ;
 int NOFREE ;
 int dbAdjTree (TYPE_1__*,int,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dbJoin(dmtree_t * tp, int leafno, int newval)
{
 int budsz, buddy;
 s8 *leaf;



 if (newval >= tp->dmt_budmin) {


  leaf = tp->dmt_stree + le32_to_cpu(tp->dmt_leafidx);
  budsz = BUDSIZE(newval, tp->dmt_budmin);



  while (budsz < le32_to_cpu(tp->dmt_nleafs)) {


   buddy = leafno ^ budsz;




   if (newval > leaf[buddy])
    break;


   if (newval < leaf[buddy])
    return -EIO;
   if (leafno < buddy) {


    dbAdjTree(tp, buddy, NOFREE);
   } else {



    dbAdjTree(tp, leafno, NOFREE);
    leafno = buddy;
   }



   newval += 1;
   budsz <<= 1;
  }
 }



 dbAdjTree(tp, leafno, newval);

 return 0;
}
