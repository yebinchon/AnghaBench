
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {struct aa_label** security; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int lbs_cred; } ;


 int AA_BUG (int) ;
 TYPE_1__ apparmor_blob_sizes ;

__attribute__((used)) static inline void set_cred_label(const struct cred *cred,
      struct aa_label *label)
{
 struct aa_label **blob = cred->security + apparmor_blob_sizes.lbs_cred;

 AA_BUG(!blob);
 *blob = label;
}
