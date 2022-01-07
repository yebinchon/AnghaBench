
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcphdr {int doff; } ;
struct sk_buff {unsigned int len; } ;
struct sane_request {scalar_t__ RPC_code; } ;
struct sane_reply_net_start {scalar_t__ status; scalar_t__ zero; int port; } ;
struct nf_ct_sane_master {scalar_t__ state; } ;
struct TYPE_6__ {int u3; } ;
struct TYPE_5__ {int u3; } ;
struct nf_conntrack_tuple {TYPE_3__ dst; TYPE_2__ src; } ;
struct nf_conntrack_expect {int tuple; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int _tcph ;
struct TYPE_4__ {struct nf_conntrack_tuple tuple; } ;


 int BUG_ON (int ) ;
 int CTINFO2DIR (int) ;
 int IPPROTO_TCP ;
 int IP_CT_DIR_ORIGINAL ;
 int IP_CT_ESTABLISHED ;
 int IP_CT_ESTABLISHED_REPLY ;
 int NF_ACCEPT ;
 int NF_CT_EXPECT_CLASS_DEFAULT ;
 int NF_DROP ;
 int SANE_NET_START ;
 void* SANE_STATE_NORMAL ;
 scalar_t__ SANE_STATE_START_REQUESTED ;
 int SANE_STATUS_SUCCESS ;
 scalar_t__ htonl (int ) ;
 int nf_ct_dump_tuple (int *) ;
 struct nf_conntrack_expect* nf_ct_expect_alloc (struct nf_conn*) ;
 int nf_ct_expect_init (struct nf_conntrack_expect*,int ,int ,int *,int *,int ,int *,int *) ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 scalar_t__ nf_ct_expect_related (struct nf_conntrack_expect*,int ) ;
 int nf_ct_helper_log (struct sk_buff*,struct nf_conn*,char*) ;
 int nf_ct_l3num (struct nf_conn*) ;
 int nf_sane_lock ;
 struct nf_ct_sane_master* nfct_help_data (struct nf_conn*) ;
 int ntohl (scalar_t__) ;
 int pr_debug (char*,...) ;
 struct tcphdr* sane_buffer ;
 void* skb_header_pointer (struct sk_buff*,unsigned int,unsigned int,struct tcphdr*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int help(struct sk_buff *skb,
  unsigned int protoff,
  struct nf_conn *ct,
  enum ip_conntrack_info ctinfo)
{
 unsigned int dataoff, datalen;
 const struct tcphdr *th;
 struct tcphdr _tcph;
 void *sb_ptr;
 int ret = NF_ACCEPT;
 int dir = CTINFO2DIR(ctinfo);
 struct nf_ct_sane_master *ct_sane_info = nfct_help_data(ct);
 struct nf_conntrack_expect *exp;
 struct nf_conntrack_tuple *tuple;
 struct sane_request *req;
 struct sane_reply_net_start *reply;


 if (ctinfo != IP_CT_ESTABLISHED &&
     ctinfo != IP_CT_ESTABLISHED_REPLY)
  return NF_ACCEPT;


 th = skb_header_pointer(skb, protoff, sizeof(_tcph), &_tcph);
 if (th == ((void*)0))
  return NF_ACCEPT;


 dataoff = protoff + th->doff * 4;
 if (dataoff >= skb->len)
  return NF_ACCEPT;

 datalen = skb->len - dataoff;

 spin_lock_bh(&nf_sane_lock);
 sb_ptr = skb_header_pointer(skb, dataoff, datalen, sane_buffer);
 BUG_ON(sb_ptr == ((void*)0));

 if (dir == IP_CT_DIR_ORIGINAL) {
  if (datalen != sizeof(struct sane_request))
   goto out;

  req = sb_ptr;
  if (req->RPC_code != htonl(SANE_NET_START)) {

   ct_sane_info->state = SANE_STATE_NORMAL;
   goto out;
  }


  ct_sane_info->state = SANE_STATE_START_REQUESTED;
  goto out;
 }


 if (ct_sane_info->state != SANE_STATE_START_REQUESTED)
  goto out;


 ct_sane_info->state = SANE_STATE_NORMAL;

 if (datalen < sizeof(struct sane_reply_net_start)) {
  pr_debug("NET_START reply too short\n");
  goto out;
 }

 reply = sb_ptr;
 if (reply->status != htonl(SANE_STATUS_SUCCESS)) {

  pr_debug("unsuccessful SANE_STATUS = %u\n",
    ntohl(reply->status));
  goto out;
 }


 if (reply->zero != 0)
  goto out;

 exp = nf_ct_expect_alloc(ct);
 if (exp == ((void*)0)) {
  nf_ct_helper_log(skb, ct, "cannot alloc expectation");
  ret = NF_DROP;
  goto out;
 }

 tuple = &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple;
 nf_ct_expect_init(exp, NF_CT_EXPECT_CLASS_DEFAULT, nf_ct_l3num(ct),
     &tuple->src.u3, &tuple->dst.u3,
     IPPROTO_TCP, ((void*)0), &reply->port);

 pr_debug("expect: ");
 nf_ct_dump_tuple(&exp->tuple);


 if (nf_ct_expect_related(exp, 0) != 0) {
  nf_ct_helper_log(skb, ct, "cannot add expectation");
  ret = NF_DROP;
 }

 nf_ct_expect_put(exp);

out:
 spin_unlock_bh(&nf_sane_lock);
 return ret;
}
