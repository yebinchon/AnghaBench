
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int size; int vec; } ;


 int AA_BUG (int) ;
 int vec_cmp (int ,int ,int ,int ) ;

__attribute__((used)) static int label_cmp(struct aa_label *a, struct aa_label *b)
{
 AA_BUG(!b);

 if (a == b)
  return 0;

 return vec_cmp(a->vec, a->size, b->vec, b->size);
}
