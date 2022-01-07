
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nfqnl_msg_verdict_hdr {int verdict; } ;


 size_t NFQA_VERDICT_HDR ;
 unsigned int NF_MAX_VERDICT ;
 unsigned int NF_STOLEN ;
 unsigned int NF_VERDICT_MASK ;
 struct nfqnl_msg_verdict_hdr* nla_data (struct nlattr const* const) ;
 unsigned int ntohl (int ) ;

__attribute__((used)) static struct nfqnl_msg_verdict_hdr*
verdicthdr_get(const struct nlattr * const nfqa[])
{
 struct nfqnl_msg_verdict_hdr *vhdr;
 unsigned int verdict;

 if (!nfqa[NFQA_VERDICT_HDR])
  return ((void*)0);

 vhdr = nla_data(nfqa[NFQA_VERDICT_HDR]);
 verdict = ntohl(vhdr->verdict) & NF_VERDICT_MASK;
 if (verdict > NF_MAX_VERDICT || verdict == NF_STOLEN)
  return ((void*)0);
 return vhdr;
}
