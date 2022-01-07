
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
typedef int gfp_t ;


 int init_task_smack (int ,int *,int *) ;
 int smack_cred (struct cred*) ;

__attribute__((used)) static int smack_cred_alloc_blank(struct cred *cred, gfp_t gfp)
{
 init_task_smack(smack_cred(cred), ((void*)0), ((void*)0));
 return 0;
}
