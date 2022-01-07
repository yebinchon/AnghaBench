
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sw_flow_id {struct sw_flow_key* unmasked_key; } ;
struct nlattr {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sw_flow_key* kmalloc (int,int ) ;
 int memcpy (struct sw_flow_key*,struct sw_flow_key const*,int) ;
 scalar_t__ ovs_nla_get_ufid (struct sw_flow_id*,struct nlattr const*,int) ;

int ovs_nla_get_identifier(struct sw_flow_id *sfid, const struct nlattr *ufid,
      const struct sw_flow_key *key, bool log)
{
 struct sw_flow_key *new_key;

 if (ovs_nla_get_ufid(sfid, ufid, log))
  return 0;


 new_key = kmalloc(sizeof(*new_key), GFP_KERNEL);
 if (!new_key)
  return -ENOMEM;
 memcpy(new_key, key, sizeof(*key));
 sfid->unmasked_key = new_key;

 return 0;
}
