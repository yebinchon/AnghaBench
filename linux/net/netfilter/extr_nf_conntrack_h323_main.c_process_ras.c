
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_3__ {int choice; int infoRequestResponse; int locationConfirm; int locationRequest; int admissionConfirm; int admissionRequest; int unregistrationRequest; int registrationConfirm; int registrationRequest; int gatekeeperConfirm; int gatekeeperRequest; } ;
typedef TYPE_1__ RasMessage ;
 int pr_debug (char*,int) ;
 int process_acf (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;
 int process_arq (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;
 int process_gcf (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;
 int process_grq (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;
 int process_irr (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;
 int process_lcf (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;
 int process_lrq (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;
 int process_rcf (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;
 int process_rrq (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;
 int process_urq (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned char**,int *) ;

__attribute__((used)) static int process_ras(struct sk_buff *skb, struct nf_conn *ct,
         enum ip_conntrack_info ctinfo,
         unsigned int protoff,
         unsigned char **data, RasMessage *ras)
{
 switch (ras->choice) {
 case 134:
  return process_grq(skb, ct, ctinfo, protoff, data,
       &ras->gatekeeperRequest);
 case 135:
  return process_gcf(skb, ct, ctinfo, protoff, data,
       &ras->gatekeeperConfirm);
 case 129:
  return process_rrq(skb, ct, ctinfo, protoff, data,
       &ras->registrationRequest);
 case 130:
  return process_rcf(skb, ct, ctinfo, protoff, data,
       &ras->registrationConfirm);
 case 128:
  return process_urq(skb, ct, ctinfo, protoff, data,
       &ras->unregistrationRequest);
 case 136:
  return process_arq(skb, ct, ctinfo, protoff, data,
       &ras->admissionRequest);
 case 137:
  return process_acf(skb, ct, ctinfo, protoff, data,
       &ras->admissionConfirm);
 case 131:
  return process_lrq(skb, ct, ctinfo, protoff, data,
       &ras->locationRequest);
 case 132:
  return process_lcf(skb, ct, ctinfo, protoff, data,
       &ras->locationConfirm);
 case 133:
  return process_irr(skb, ct, ctinfo, protoff, data,
       &ras->infoRequestResponse);
 default:
  pr_debug("nf_ct_ras: RAS message %d\n", ras->choice);
  break;
 }

 return 0;
}
