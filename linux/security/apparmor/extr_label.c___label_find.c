
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int size; int vec; } ;


 int AA_BUG (int) ;
 struct aa_label* __vec_find (int ,int ) ;

__attribute__((used)) static struct aa_label *__label_find(struct aa_label *label)
{
 AA_BUG(!label);

 return __vec_find(label->vec, label->size);
}
