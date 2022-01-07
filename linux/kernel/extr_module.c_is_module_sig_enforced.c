
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sig_enforce ;

bool is_module_sig_enforced(void)
{
 return sig_enforce;
}
