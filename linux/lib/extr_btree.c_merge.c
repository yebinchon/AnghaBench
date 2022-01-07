
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int mempool; } ;
struct btree_geo {int dummy; } ;


 int bkey (struct btree_geo*,unsigned long*,int) ;
 int btree_remove_level (struct btree_head*,struct btree_geo*,int ,int) ;
 unsigned long* bval (struct btree_geo*,unsigned long*,int) ;
 int mempool_free (unsigned long*,int ) ;
 int setkey (struct btree_geo*,unsigned long*,int,int ) ;
 int setval (struct btree_geo*,unsigned long*,int,unsigned long*) ;

__attribute__((used)) static void merge(struct btree_head *head, struct btree_geo *geo, int level,
  unsigned long *left, int lfill,
  unsigned long *right, int rfill,
  unsigned long *parent, int lpos)
{
 int i;

 for (i = 0; i < rfill; i++) {

  setkey(geo, left, lfill + i, bkey(geo, right, i));
  setval(geo, left, lfill + i, bval(geo, right, i));
 }

 setval(geo, parent, lpos, right);
 setval(geo, parent, lpos + 1, left);

 btree_remove_level(head, geo, bkey(geo, parent, lpos), level + 1);
 mempool_free(right, head->mempool);
}
