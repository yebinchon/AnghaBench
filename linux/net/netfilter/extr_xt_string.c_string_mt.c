
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ v1; } ;
struct xt_string_info {int config; int to_offset; int from_offset; TYPE_2__ u; } ;
struct xt_action_param {struct xt_string_info* matchinfo; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ UINT_MAX ;
 int XT_STRING_FLAG_INVERT ;
 scalar_t__ skb_find_text (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static bool
string_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_string_info *conf = par->matchinfo;
 bool invert;

 invert = conf->u.v1.flags & XT_STRING_FLAG_INVERT;

 return (skb_find_text((struct sk_buff *)skb, conf->from_offset,
        conf->to_offset, conf->config)
        != UINT_MAX) ^ invert;
}
