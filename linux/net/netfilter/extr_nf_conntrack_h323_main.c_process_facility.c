
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_6__ {int count; int * item; } ;
struct TYPE_5__ {scalar_t__ choice; } ;
struct TYPE_7__ {int options; TYPE_2__ fastStart; int h245Address; int alternativeAddress; TYPE_1__ reason; } ;
typedef TYPE_3__ Facility_UUIE ;


 scalar_t__ eFacilityReason_callForwarded ;
 int eFacility_UUIE_alternativeAddress ;
 int eFacility_UUIE_fastStart ;
 int eFacility_UUIE_h245Address ;
 int expect_callforwarding (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int,int *) ;
 int expect_h245 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int,int *) ;
 int pr_debug (char*) ;
 int process_olc (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int,int *) ;

__attribute__((used)) static int process_facility(struct sk_buff *skb, struct nf_conn *ct,
       enum ip_conntrack_info ctinfo,
       unsigned int protoff,
       unsigned char **data, int dataoff,
       Facility_UUIE *facility)
{
 int ret;
 int i;

 pr_debug("nf_ct_q931: Facility\n");

 if (facility->reason.choice == eFacilityReason_callForwarded) {
  if (facility->options & eFacility_UUIE_alternativeAddress)
   return expect_callforwarding(skb, ct, ctinfo,
           protoff, data, dataoff,
           &facility->
           alternativeAddress);
  return 0;
 }

 if (facility->options & eFacility_UUIE_h245Address) {
  ret = expect_h245(skb, ct, ctinfo, protoff, data, dataoff,
      &facility->h245Address);
  if (ret < 0)
   return -1;
 }

 if (facility->options & eFacility_UUIE_fastStart) {
  for (i = 0; i < facility->fastStart.count; i++) {
   ret = process_olc(skb, ct, ctinfo,
       protoff, data, dataoff,
       &facility->fastStart.item[i]);
   if (ret < 0)
    return -1;
  }
 }

 return 0;
}
