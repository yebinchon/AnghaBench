
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
typedef int gfp_t ;


 int set_cred_label (struct cred*,int *) ;

__attribute__((used)) static int apparmor_cred_alloc_blank(struct cred *cred, gfp_t gfp)
{
 set_cred_label(cred, ((void*)0));
 return 0;
}
