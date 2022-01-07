
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtnl_dumpit_func ;
typedef int rtnl_doit_func ;


 int pr_err (char*,int,int) ;
 int rtnl_register_internal (int *,int,int,int ,int ,unsigned int) ;

void rtnl_register(int protocol, int msgtype,
     rtnl_doit_func doit, rtnl_dumpit_func dumpit,
     unsigned int flags)
{
 int err;

 err = rtnl_register_internal(((void*)0), protocol, msgtype, doit, dumpit,
         flags);
 if (err)
  pr_err("Unable to register rtnetlink message handler, "
         "protocol = %d, message type = %d\n", protocol, msgtype);
}
