
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sw_flow_id {int ufid_len; } ;
struct sw_flow_actions {int orig_len; } ;
struct ovs_header {int dummy; } ;
struct ovs_flow_stats {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;
 size_t nla_total_size_64bit (int) ;
 scalar_t__ ovs_identifier_is_ufid (struct sw_flow_id const*) ;
 int ovs_key_attr_size () ;
 scalar_t__ should_fill_actions (int ) ;
 scalar_t__ should_fill_key (struct sw_flow_id const*,int ) ;
 scalar_t__ should_fill_mask (int ) ;

__attribute__((used)) static size_t ovs_flow_cmd_msg_size(const struct sw_flow_actions *acts,
        const struct sw_flow_id *sfid,
        uint32_t ufid_flags)
{
 size_t len = NLMSG_ALIGN(sizeof(struct ovs_header));


 if (sfid && ovs_identifier_is_ufid(sfid))
  len += nla_total_size(sfid->ufid_len);


 if (!sfid || should_fill_key(sfid, ufid_flags))
  len += nla_total_size(ovs_key_attr_size());


 if (should_fill_mask(ufid_flags))
  len += nla_total_size(ovs_key_attr_size());


 if (should_fill_actions(ufid_flags))
  len += nla_total_size(acts->orig_len);

 return len
  + nla_total_size_64bit(sizeof(struct ovs_flow_stats))
  + nla_total_size(1)
  + nla_total_size_64bit(8);
}
