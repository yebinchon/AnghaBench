
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nlattr {int dummy; } ;


 size_t RTA_TABLE ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static inline u32 rtm_get_table(struct nlattr *attrs[], u8 table)
{
 if (attrs[RTA_TABLE])
  table = nla_get_u32(attrs[RTA_TABLE]);

 return table;
}
