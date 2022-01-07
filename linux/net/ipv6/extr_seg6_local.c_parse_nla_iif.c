
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {int iif; } ;
struct nlattr {int dummy; } ;


 size_t SEG6_LOCAL_IIF ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int parse_nla_iif(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
 slwt->iif = nla_get_u32(attrs[SEG6_LOCAL_IIF]);

 return 0;
}
