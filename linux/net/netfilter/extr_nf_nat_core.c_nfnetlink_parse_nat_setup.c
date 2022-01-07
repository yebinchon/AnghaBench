
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
nfnetlink_parse_nat_setup(struct nf_conn *ct,
     enum nf_nat_manip_type manip,
     const struct nlattr *attr)
{
 return -EOPNOTSUPP;
}
