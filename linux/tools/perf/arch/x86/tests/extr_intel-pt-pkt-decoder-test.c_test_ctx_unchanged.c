
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_data {int dummy; } ;
struct intel_pt_pkt {int dummy; } ;
typedef enum intel_pt_pkt_ctx { ____Placeholder_intel_pt_pkt_ctx } intel_pt_pkt_ctx ;


 int TEST_FAIL ;
 int TEST_OK ;
 int decoding_failed (struct test_data*) ;
 int intel_pt_upd_pkt_ctx (struct intel_pt_pkt*,int*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int test_ctx_unchanged(struct test_data *d, struct intel_pt_pkt *packet,
         enum intel_pt_pkt_ctx ctx)
{
 enum intel_pt_pkt_ctx old_ctx = ctx;

 intel_pt_upd_pkt_ctx(packet, &ctx);

 if (ctx != old_ctx) {
  decoding_failed(d);
  pr_debug("Packet context changed!\n");
  return TEST_FAIL;
 }

 return TEST_OK;
}
