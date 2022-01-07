
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;


 struct cred const machine_cred ;

const struct cred *rpc_machine_cred(void)
{
 return &machine_cred;
}
