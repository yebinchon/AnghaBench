
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int size; int vec; } ;


 int AA_BUG (int) ;
 struct aa_label* vec_find (int ,int ) ;

struct aa_label *aa_label_find(struct aa_label *label)
{
 AA_BUG(!label);

 return vec_find(label->vec, label->size);
}
