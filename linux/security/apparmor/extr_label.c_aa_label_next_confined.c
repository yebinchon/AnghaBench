
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int size; int * vec; } ;


 int AA_BUG (int) ;
 int profile_unconfined (int ) ;

int aa_label_next_confined(struct aa_label *label, int i)
{
 AA_BUG(!label);
 AA_BUG(i < 0);

 for (; i < label->size; i++) {
  if (!profile_unconfined(label->vec[i]))
   return i;
 }

 return i;
}
