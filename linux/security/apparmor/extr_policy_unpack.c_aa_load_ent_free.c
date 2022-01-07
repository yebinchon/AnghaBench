
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_load_ent {int ns_name; int new; int old; int rename; } ;


 int aa_put_profile (int ) ;
 int kfree (int ) ;
 int kzfree (struct aa_load_ent*) ;

void aa_load_ent_free(struct aa_load_ent *ent)
{
 if (ent) {
  aa_put_profile(ent->rename);
  aa_put_profile(ent->old);
  aa_put_profile(ent->new);
  kfree(ent->ns_name);
  kzfree(ent);
 }
}
