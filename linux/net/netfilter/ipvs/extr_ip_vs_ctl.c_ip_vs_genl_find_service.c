
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_service_user_kern {int dummy; } ;
struct ip_vs_service {int dummy; } ;


 struct ip_vs_service* ERR_PTR (int) ;
 int ip_vs_genl_parse_service (struct netns_ipvs*,struct ip_vs_service_user_kern*,struct nlattr*,int,struct ip_vs_service**) ;

__attribute__((used)) static struct ip_vs_service *ip_vs_genl_find_service(struct netns_ipvs *ipvs,
           struct nlattr *nla)
{
 struct ip_vs_service_user_kern usvc;
 struct ip_vs_service *svc;
 int ret;

 ret = ip_vs_genl_parse_service(ipvs, &usvc, nla, 0, &svc);
 return ret ? ERR_PTR(ret) : svc;
}
