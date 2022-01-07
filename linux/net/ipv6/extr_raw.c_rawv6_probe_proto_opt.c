
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw6_frag_vec {int hlen; int * c; int msg; } ;
struct flowi6 {int flowi6_proto; int fl6_mh_type; int fl6_icmp_code; int fl6_icmp_type; } ;




 int memcpy_from_msg (int *,int ,int) ;

__attribute__((used)) static int rawv6_probe_proto_opt(struct raw6_frag_vec *rfv, struct flowi6 *fl6)
{
 int err = 0;
 switch (fl6->flowi6_proto) {
 case 129:
  rfv->hlen = 2;
  err = memcpy_from_msg(rfv->c, rfv->msg, rfv->hlen);
  if (!err) {
   fl6->fl6_icmp_type = rfv->c[0];
   fl6->fl6_icmp_code = rfv->c[1];
  }
  break;
 case 128:
  rfv->hlen = 4;
  err = memcpy_from_msg(rfv->c, rfv->msg, rfv->hlen);
  if (!err)
   fl6->fl6_mh_type = rfv->c[2];
 }
 return err;
}
