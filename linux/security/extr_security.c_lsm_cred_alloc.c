
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {int * security; } ;
typedef int gfp_t ;
struct TYPE_2__ {scalar_t__ lbs_cred; } ;


 int ENOMEM ;
 TYPE_1__ blob_sizes ;
 int * kzalloc (scalar_t__,int ) ;

__attribute__((used)) static int lsm_cred_alloc(struct cred *cred, gfp_t gfp)
{
 if (blob_sizes.lbs_cred == 0) {
  cred->security = ((void*)0);
  return 0;
 }

 cred->security = kzalloc(blob_sizes.lbs_cred, gfp);
 if (cred->security == ((void*)0))
  return -ENOMEM;
 return 0;
}
