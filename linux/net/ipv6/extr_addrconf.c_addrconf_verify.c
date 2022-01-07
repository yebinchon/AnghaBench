
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addr_chk_work ;
 int addrconf_wq ;
 int mod_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void addrconf_verify(void)
{
 mod_delayed_work(addrconf_wq, &addr_chk_work, 0);
}
