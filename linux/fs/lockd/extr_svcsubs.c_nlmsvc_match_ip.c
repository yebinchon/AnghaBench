
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int dummy; } ;


 int nlm_srcaddr (struct nlm_host*) ;
 int rpc_cmp_addr (int ,void*) ;

__attribute__((used)) static int
nlmsvc_match_ip(void *datap, struct nlm_host *host)
{
 return rpc_cmp_addr(nlm_srcaddr(host), datap);
}
