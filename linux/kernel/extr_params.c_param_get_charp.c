
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,char*) ;

int param_get_charp(char *buffer, const struct kernel_param *kp)
{
 return scnprintf(buffer, PAGE_SIZE, "%s\n", *((char **)kp->arg));
}
