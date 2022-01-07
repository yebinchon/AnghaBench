
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nf_conntrack_nat_helper {int module; } ;
struct nf_conntrack_helper {char* nat_mod_name; } ;
typedef int mod_name ;


 int ENOENT ;
 int NF_CT_HELPER_NAME_LEN ;
 struct nf_conntrack_helper* __nf_conntrack_helper_find (char const*,int ,int ) ;
 struct nf_conntrack_nat_helper* nf_conntrack_nat_helper_find (char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int request_module (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int try_module_get (int ) ;

int
nf_nat_helper_try_module_get(const char *name, u16 l3num, u8 protonum)
{
 struct nf_conntrack_helper *h;
 struct nf_conntrack_nat_helper *nat;
 char mod_name[NF_CT_HELPER_NAME_LEN];
 int ret = 0;

 rcu_read_lock();
 h = __nf_conntrack_helper_find(name, l3num, protonum);
 if (!h) {
  rcu_read_unlock();
  return -ENOENT;
 }

 nat = nf_conntrack_nat_helper_find(h->nat_mod_name);
 if (!nat) {
  snprintf(mod_name, sizeof(mod_name), "%s", h->nat_mod_name);
  rcu_read_unlock();
  request_module(mod_name);

  rcu_read_lock();
  nat = nf_conntrack_nat_helper_find(mod_name);
  if (!nat) {
   rcu_read_unlock();
   return -ENOENT;
  }
 }

 if (!try_module_get(nat->module))
  ret = -ENOENT;

 rcu_read_unlock();
 return ret;
}
