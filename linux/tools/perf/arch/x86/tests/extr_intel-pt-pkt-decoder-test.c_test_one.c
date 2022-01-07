
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ count; scalar_t__ payload; } ;
struct test_data {int ctx; int len; int new_ctx; int bytes; TYPE_1__ packet; scalar_t__ ctx_unchanged; } ;
struct intel_pt_pkt {scalar_t__ type; scalar_t__ count; scalar_t__ payload; } ;
typedef int packet ;
typedef enum intel_pt_pkt_ctx { ____Placeholder_intel_pt_pkt_ctx } intel_pt_pkt_ctx ;


 int INTEL_PT_BLK_4_CTX ;
 int INTEL_PT_BLK_8_CTX ;
 int INTEL_PT_NO_CTX ;
 int INTEL_PT_PKT_MAX_SZ ;
 int TEST_FAIL ;
 int decoding_failed (struct test_data*) ;
 int dump_packet (TYPE_1__*,int ,int) ;
 int fail (struct test_data*,struct intel_pt_pkt*,int,int) ;
 int intel_pt_get_packet (int ,int,struct intel_pt_pkt*,int*) ;
 int memset (struct intel_pt_pkt*,int,int) ;
 int pr_debug (char*,...) ;
 int test_ctx_unchanged (struct test_data*,struct intel_pt_pkt*,int ) ;

__attribute__((used)) static int test_one(struct test_data *d)
{
 struct intel_pt_pkt packet;
 enum intel_pt_pkt_ctx ctx = d->ctx;
 int ret;

 memset(&packet, 0xff, sizeof(packet));


 ret = intel_pt_get_packet(d->bytes, d->len, &packet, &ctx);
 if (ret < 0 || ret > INTEL_PT_PKT_MAX_SZ) {
  decoding_failed(d);
  pr_debug("intel_pt_get_packet returned %d\n", ret);
  return TEST_FAIL;
 }


 if (d->ctx_unchanged) {
  int err;

  err = test_ctx_unchanged(d, &packet, INTEL_PT_NO_CTX);
  if (err)
   return err;
  err = test_ctx_unchanged(d, &packet, INTEL_PT_BLK_4_CTX);
  if (err)
   return err;
  err = test_ctx_unchanged(d, &packet, INTEL_PT_BLK_8_CTX);
  if (err)
   return err;
 }


 if (ret != d->len || packet.type != d->packet.type ||
     packet.count != d->packet.count ||
     packet.payload != d->packet.payload || ctx != d->new_ctx)
  return fail(d, &packet, ret, ctx);

 pr_debug("Decoded ok:");
 ret = dump_packet(&d->packet, d->bytes, d->len);

 return ret;
}
