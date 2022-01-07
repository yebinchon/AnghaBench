
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;


 int aa_put_label (int ) ;
 int cred_label (struct cred*) ;
 int set_cred_label (struct cred*,int *) ;

__attribute__((used)) static void apparmor_cred_free(struct cred *cred)
{
 aa_put_label(cred_label(cred));
 set_cred_label(cred, ((void*)0));
}
