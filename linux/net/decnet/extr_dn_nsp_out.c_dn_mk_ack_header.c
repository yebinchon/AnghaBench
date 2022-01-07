
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dn_scp {int numdat_rcv; int numoth_rcv; unsigned short ackxmt_dat; unsigned short ackxmt_oth; } ;
typedef int __le16 ;


 int BUG_ON (int) ;
 struct dn_scp* DN_SK (struct sock*) ;
 void* cpu_to_le16 (unsigned short) ;
 int * dn_mk_common_header (struct dn_scp*,struct sk_buff*,unsigned char,int) ;
 int swap (unsigned short,unsigned short) ;

__attribute__((used)) static __le16 *dn_mk_ack_header(struct sock *sk, struct sk_buff *skb, unsigned char msgflag, int hlen, int other)
{
 struct dn_scp *scp = DN_SK(sk);
 unsigned short acknum = scp->numdat_rcv & 0x0FFF;
 unsigned short ackcrs = scp->numoth_rcv & 0x0FFF;
 __le16 *ptr;

 BUG_ON(hlen < 9);

 scp->ackxmt_dat = acknum;
 scp->ackxmt_oth = ackcrs;
 acknum |= 0x8000;
 ackcrs |= 0x8000;


 if (other)
  swap(acknum, ackcrs);


 ackcrs |= 0x2000;

 ptr = dn_mk_common_header(scp, skb, msgflag, hlen);

 *ptr++ = cpu_to_le16(acknum);
 *ptr++ = cpu_to_le16(ackcrs);

 return ptr;
}
