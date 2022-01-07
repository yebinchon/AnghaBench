
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct flow_keys_digest {int dummy; } ;
struct TYPE_7__ {int dst; int src; } ;
struct TYPE_8__ {TYPE_3__ v4addrs; } ;
struct TYPE_6__ {int ports; } ;
struct TYPE_5__ {int ip_proto; int n_proto; } ;
struct flow_keys {TYPE_4__ addrs; TYPE_2__ ports; TYPE_1__ basic; } ;
struct _flow_keys_digest_data {int dst; int src; int ports; int ip_proto; int n_proto; } ;


 int BUILD_BUG_ON (int) ;
 int memset (struct flow_keys_digest*,int ,int) ;

void make_flow_keys_digest(struct flow_keys_digest *digest,
      const struct flow_keys *flow)
{
 struct _flow_keys_digest_data *data =
     (struct _flow_keys_digest_data *)digest;

 BUILD_BUG_ON(sizeof(*data) > sizeof(*digest));

 memset(digest, 0, sizeof(*digest));

 data->n_proto = flow->basic.n_proto;
 data->ip_proto = flow->basic.ip_proto;
 data->ports = flow->ports.ports;
 data->src = flow->addrs.v4addrs.src;
 data->dst = flow->addrs.v4addrs.dst;
}
