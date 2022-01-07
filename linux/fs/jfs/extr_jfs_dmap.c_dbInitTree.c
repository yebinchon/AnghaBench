
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmaptree {int* stree; int budmin; int nleafs; int leafidx; int l2nleafs; } ;
typedef int s8 ;


 int TREEMAX (int*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dbInitTree(struct dmaptree * dtp)
{
 int l2max, l2free, bsize, nextb, i;
 int child, parent, nparent;
 s8 *tp, *cp, *cp1;

 tp = dtp->stree;


 l2max = le32_to_cpu(dtp->l2nleafs) + dtp->budmin;
 for (l2free = dtp->budmin, bsize = 1; l2free < l2max;
      l2free++, bsize = nextb) {

  nextb = bsize << 1;


  for (i = 0, cp = tp + le32_to_cpu(dtp->leafidx);
       i < le32_to_cpu(dtp->nleafs);
       i += nextb, cp += nextb) {

   if (*cp == l2free && *(cp + bsize) == l2free) {
    *cp = l2free + 1;
    *(cp + bsize) = -1;
   }
  }
 }
 for (child = le32_to_cpu(dtp->leafidx),
      nparent = le32_to_cpu(dtp->nleafs) >> 2;
      nparent > 0; nparent >>= 2, child = parent) {

  parent = (child - 1) >> 2;




  for (i = 0, cp = tp + child, cp1 = tp + parent;
       i < nparent; i++, cp += 4, cp1++)
   *cp1 = TREEMAX(cp);
 }

 return (*tp);
}
