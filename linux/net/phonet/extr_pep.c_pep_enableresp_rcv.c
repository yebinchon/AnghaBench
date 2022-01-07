
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ error_code; } ;


 int ECONNREFUSED ;
 int GFP_ATOMIC ;
 int PNS_PIPE_ENABLED_IND ;
 scalar_t__ PN_PIPE_NO_ERROR ;
 int pep_indicate (struct sock*,int ,int ,int *,int ,int ) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;

__attribute__((used)) static int pep_enableresp_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct pnpipehdr *hdr = pnp_hdr(skb);

 if (hdr->error_code != PN_PIPE_NO_ERROR)
  return -ECONNREFUSED;

 return pep_indicate(sk, PNS_PIPE_ENABLED_IND, 0 ,
  ((void*)0), 0, GFP_ATOMIC);

}
