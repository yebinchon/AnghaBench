
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int labels; scalar_t__ mark; } ;
struct sw_flow_key {scalar_t__ ct_orig_proto; TYPE_1__ ct; scalar_t__ ct_zone; scalar_t__ ct_state; } ;
struct sk_buff {int dummy; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void ovs_ct_fill_key(const struct sk_buff *skb,
       struct sw_flow_key *key)
{
 key->ct_state = 0;
 key->ct_zone = 0;
 key->ct.mark = 0;
 memset(&key->ct.labels, 0, sizeof(key->ct.labels));



 key->ct_orig_proto = 0;
}
