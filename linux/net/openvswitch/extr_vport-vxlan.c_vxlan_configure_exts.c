
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_config {int flags; } ;
struct vport {int dummy; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t OVS_VXLAN_EXT_GBP ;
 int OVS_VXLAN_EXT_MAX ;
 int VXLAN_F_GBP ;
 int exts_policy ;
 int nla_len (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;

__attribute__((used)) static int vxlan_configure_exts(struct vport *vport, struct nlattr *attr,
    struct vxlan_config *conf)
{
 struct nlattr *exts[OVS_VXLAN_EXT_MAX + 1];
 int err;

 if (nla_len(attr) < sizeof(struct nlattr))
  return -EINVAL;

 err = nla_parse_nested_deprecated(exts, OVS_VXLAN_EXT_MAX, attr,
       exts_policy, ((void*)0));
 if (err < 0)
  return err;

 if (exts[OVS_VXLAN_EXT_GBP])
  conf->flags |= VXLAN_F_GBP;

 return 0;
}
