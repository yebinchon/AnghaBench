
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
typedef int rtnl_dumpit_func ;
typedef int rtnl_doit_func ;


 int rtnl_register_internal (struct module*,int,int,int ,int ,unsigned int) ;

int rtnl_register_module(struct module *owner,
    int protocol, int msgtype,
    rtnl_doit_func doit, rtnl_dumpit_func dumpit,
    unsigned int flags)
{
 return rtnl_register_internal(owner, protocol, msgtype,
          doit, dumpit, flags);
}
