
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tun_flags; } ;
struct sw_flow_key {int tun_opts_len; TYPE_1__ tun_key; } ;
struct geneve_opt {int length; int type; } ;


 int EINVAL ;
 int GENEVE_CRIT_OPT_TYPE ;
 int TUNNEL_CRIT_OPT ;
 scalar_t__ TUN_METADATA_OPTS (struct sw_flow_key*,int) ;

__attribute__((used)) static int validate_geneve_opts(struct sw_flow_key *key)
{
 struct geneve_opt *option;
 int opts_len = key->tun_opts_len;
 bool crit_opt = 0;

 option = (struct geneve_opt *)TUN_METADATA_OPTS(key, key->tun_opts_len);
 while (opts_len > 0) {
  int len;

  if (opts_len < sizeof(*option))
   return -EINVAL;

  len = sizeof(*option) + option->length * 4;
  if (len > opts_len)
   return -EINVAL;

  crit_opt |= !!(option->type & GENEVE_CRIT_OPT_TYPE);

  option = (struct geneve_opt *)((u8 *)option + len);
  opts_len -= len;
 }

 key->tun_key.tun_flags |= crit_opt ? TUNNEL_CRIT_OPT : 0;

 return 0;
}
