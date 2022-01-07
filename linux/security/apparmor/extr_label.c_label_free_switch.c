
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int flags; } ;


 int FLAG_NS_COUNT ;
 int aa_free_ns (int ) ;
 int aa_free_profile (int ) ;
 int aa_label_free (struct aa_label*) ;
 scalar_t__ label_isprofile (struct aa_label*) ;
 int labels_ns (struct aa_label*) ;
 int labels_profile (struct aa_label*) ;

__attribute__((used)) static void label_free_switch(struct aa_label *label)
{
 if (label->flags & FLAG_NS_COUNT)
  aa_free_ns(labels_ns(label));
 else if (label_isprofile(label))
  aa_free_profile(labels_profile(label));
 else
  aa_label_free(label);
}
