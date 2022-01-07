
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {int oif; } ;
struct nlattr {int dummy; } ;


 size_t SEG6_LOCAL_OIF ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int parse_nla_oif(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
 slwt->oif = nla_get_u32(attrs[SEG6_LOCAL_OIF]);

 return 0;
}
