
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int dummy; } ;


 int kfree (struct aa_label*) ;
 int label_destroy (struct aa_label*) ;

void aa_label_free(struct aa_label *label)
{
 if (!label)
  return;

 label_destroy(label);
 kfree(label);
}
