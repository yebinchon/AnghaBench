
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {unsigned int mnamelen; int mname; struct dlm_ctxt* dlm; } ;
struct dlm_ctxt {int dummy; } ;


 scalar_t__ memcmp (char const*,int ,unsigned int) ;

__attribute__((used)) static inline int dlm_mle_equal(struct dlm_ctxt *dlm,
    struct dlm_master_list_entry *mle,
    const char *name,
    unsigned int namelen)
{
 if (dlm != mle->dlm)
  return 0;

 if (namelen != mle->mnamelen ||
     memcmp(name, mle->mname, namelen) != 0)
  return 0;

 return 1;
}
