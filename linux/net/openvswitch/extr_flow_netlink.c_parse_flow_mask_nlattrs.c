
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nlattr {int dummy; } ;


 int __parse_flow_nlattrs (struct nlattr const*,struct nlattr const**,int *,int,int) ;

__attribute__((used)) static int parse_flow_mask_nlattrs(const struct nlattr *attr,
       const struct nlattr *a[], u64 *attrsp,
       bool log)
{
 return __parse_flow_nlattrs(attr, a, attrsp, log, 1);
}
