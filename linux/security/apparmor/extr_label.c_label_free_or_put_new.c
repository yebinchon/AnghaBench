
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int dummy; } ;


 int aa_label_free (struct aa_label*) ;
 int aa_put_label (struct aa_label*) ;

__attribute__((used)) static void label_free_or_put_new(struct aa_label *label, struct aa_label *new)
{
 if (label != new)

  aa_label_free(new);
 else
  aa_put_label(new);
}
