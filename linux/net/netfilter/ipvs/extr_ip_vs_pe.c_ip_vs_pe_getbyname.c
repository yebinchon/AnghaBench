
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_pe {int dummy; } ;


 struct ip_vs_pe* __ip_vs_pe_getbyname (char const*) ;
 int request_module (char*,char const*) ;

struct ip_vs_pe *ip_vs_pe_getbyname(const char *name)
{
 struct ip_vs_pe *pe;


 pe = __ip_vs_pe_getbyname(name);


 if (!pe) {
  request_module("ip_vs_pe_%s", name);
  pe = __ip_vs_pe_getbyname(name);
 }

 return pe;
}
