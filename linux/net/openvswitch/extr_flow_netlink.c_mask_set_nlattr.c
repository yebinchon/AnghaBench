
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;


 int nlattr_set (struct nlattr*,int ,int ) ;
 int ovs_key_lens ;

__attribute__((used)) static void mask_set_nlattr(struct nlattr *attr, u8 val)
{
 nlattr_set(attr, val, ovs_key_lens);
}
