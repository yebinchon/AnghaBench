
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 struct aa_label* cred_label (struct cred const*) ;

__attribute__((used)) static inline struct aa_label *aa_cred_raw_label(const struct cred *cred)
{
 struct aa_label *label = cred_label(cred);

 AA_BUG(!label);
 return label;
}
