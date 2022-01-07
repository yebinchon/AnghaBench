
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {int nh6; } ;
struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;


 size_t SEG6_LOCAL_NH6 ;
 int memcpy (int *,int ,int) ;
 int nla_data (struct nlattr*) ;

__attribute__((used)) static int parse_nla_nh6(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
 memcpy(&slwt->nh6, nla_data(attrs[SEG6_LOCAL_NH6]),
        sizeof(struct in6_addr));

 return 0;
}
