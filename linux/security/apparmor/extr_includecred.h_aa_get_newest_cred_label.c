
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
struct aa_label {int dummy; } ;


 int aa_cred_raw_label (struct cred const*) ;
 struct aa_label* aa_get_newest_label (int ) ;

__attribute__((used)) static inline struct aa_label *aa_get_newest_cred_label(const struct cred *cred)
{
 return aa_get_newest_label(aa_cred_raw_label(cred));
}
