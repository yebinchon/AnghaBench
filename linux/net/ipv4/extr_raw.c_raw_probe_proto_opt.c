
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code; int type; } ;
struct TYPE_4__ {TYPE_1__ icmph; int c; } ;
struct raw_frag_vec {int hlen; TYPE_2__ hdr; int msg; } ;
struct flowi4 {scalar_t__ flowi4_proto; int fl4_icmp_code; int fl4_icmp_type; } ;


 scalar_t__ IPPROTO_ICMP ;
 int memcpy_from_msg (int ,int ,int) ;

__attribute__((used)) static int raw_probe_proto_opt(struct raw_frag_vec *rfv, struct flowi4 *fl4)
{
 int err;

 if (fl4->flowi4_proto != IPPROTO_ICMP)
  return 0;


 rfv->hlen = 2;

 err = memcpy_from_msg(rfv->hdr.c, rfv->msg, rfv->hlen);
 if (err)
  return err;

 fl4->fl4_icmp_type = rfv->hdr.icmph.type;
 fl4->fl4_icmp_code = rfv->hdr.icmph.code;

 return 0;
}
