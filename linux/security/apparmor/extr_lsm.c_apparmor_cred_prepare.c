
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
typedef int gfp_t ;


 int aa_get_newest_label (int ) ;
 int cred_label (struct cred const*) ;
 int set_cred_label (struct cred*,int ) ;

__attribute__((used)) static int apparmor_cred_prepare(struct cred *new, const struct cred *old,
     gfp_t gfp)
{
 set_cred_label(new, aa_get_newest_label(cred_label(old)));
 return 0;
}
