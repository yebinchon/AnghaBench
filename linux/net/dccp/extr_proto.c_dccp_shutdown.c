
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int dccp_pr_debug (char*,int) ;

void dccp_shutdown(struct sock *sk, int how)
{
 dccp_pr_debug("called shutdown(%x)\n", how);
}
