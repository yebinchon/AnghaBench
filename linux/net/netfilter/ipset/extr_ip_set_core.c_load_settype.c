
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFNL_SUBSYS_IPSET ;
 int nfnl_lock (int ) ;
 int nfnl_unlock (int ) ;
 int pr_debug (char*,char const*) ;
 int pr_warn (char*,char const*) ;
 scalar_t__ request_module (char*,char const*) ;

__attribute__((used)) static bool
load_settype(const char *name)
{
 nfnl_unlock(NFNL_SUBSYS_IPSET);
 pr_debug("try to load ip_set_%s\n", name);
 if (request_module("ip_set_%s", name) < 0) {
  pr_warn("Can't find ip_set type %s\n", name);
  nfnl_lock(NFNL_SUBSYS_IPSET);
  return 0;
 }
 nfnl_lock(NFNL_SUBSYS_IPSET);
 return 1;
}
