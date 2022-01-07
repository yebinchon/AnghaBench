
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_cred {int dummy; } ;


 int kfree (struct gss_cred*) ;

__attribute__((used)) static void
gss_free_cred(struct gss_cred *gss_cred)
{
 kfree(gss_cred);
}
