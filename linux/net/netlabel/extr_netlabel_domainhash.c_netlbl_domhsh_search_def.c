
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct netlbl_dom_map {scalar_t__ valid; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int netlbl_domhsh_def_ipv4 ;
 int netlbl_domhsh_def_ipv6 ;
 struct netlbl_dom_map* netlbl_domhsh_rcu_deref (int ) ;
 struct netlbl_dom_map* netlbl_domhsh_search (char const*,scalar_t__) ;

__attribute__((used)) static struct netlbl_dom_map *netlbl_domhsh_search_def(const char *domain,
             u16 family)
{
 struct netlbl_dom_map *entry;

 entry = netlbl_domhsh_search(domain, family);
 if (entry != ((void*)0))
  return entry;
 if (family == AF_INET || family == AF_UNSPEC) {
  entry = netlbl_domhsh_rcu_deref(netlbl_domhsh_def_ipv4);
  if (entry != ((void*)0) && entry->valid)
   return entry;
 }
 if (family == AF_INET6 || family == AF_UNSPEC) {
  entry = netlbl_domhsh_rcu_deref(netlbl_domhsh_def_ipv6);
  if (entry != ((void*)0) && entry->valid)
   return entry;
 }

 return ((void*)0);
}
