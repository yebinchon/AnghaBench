
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {int nh4; } ;
struct nlattr {int dummy; } ;
struct in_addr {int dummy; } ;


 size_t SEG6_LOCAL_NH4 ;
 int memcpy (int *,int ,int) ;
 int nla_data (struct nlattr*) ;

__attribute__((used)) static int parse_nla_nh4(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
 memcpy(&slwt->nh4, nla_data(attrs[SEG6_LOCAL_NH4]),
        sizeof(struct in_addr));

 return 0;
}
