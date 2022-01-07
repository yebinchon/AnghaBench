
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_local_lwt {int table; } ;
struct nlattr {int dummy; } ;


 size_t SEG6_LOCAL_TABLE ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int parse_nla_table(struct nlattr **attrs, struct seg6_local_lwt *slwt)
{
 slwt->table = nla_get_u32(attrs[SEG6_LOCAL_TABLE]);

 return 0;
}
