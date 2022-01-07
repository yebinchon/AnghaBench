
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; void* data; } ;
struct sctp_chunkhdr {scalar_t__ type; int length; } ;
typedef int _ch ;


 scalar_t__ SCTP_CID_ABORT ;
 scalar_t__ SCTP_CID_INIT ;
 scalar_t__ SCTP_CID_SHUTDOWN_COMPLETE ;
 int SCTP_PAD4 (int) ;
 int ntohs (int ) ;
 struct sctp_chunkhdr* skb_header_pointer (struct sk_buff*,int,int,struct sctp_chunkhdr*) ;

__attribute__((used)) static int sctp_rcv_ootb(struct sk_buff *skb)
{
 struct sctp_chunkhdr *ch, _ch;
 int ch_end, offset = 0;


 do {

  if (offset + sizeof(_ch) > skb->len)
   break;

  ch = skb_header_pointer(skb, offset, sizeof(*ch), &_ch);


  if (ntohs(ch->length) < sizeof(_ch))
   break;

  ch_end = offset + SCTP_PAD4(ntohs(ch->length));
  if (ch_end > skb->len)
   break;





  if (SCTP_CID_ABORT == ch->type)
   goto discard;





  if (SCTP_CID_SHUTDOWN_COMPLETE == ch->type)
   goto discard;






  if (SCTP_CID_INIT == ch->type && (void *)ch != skb->data)
   goto discard;

  offset = ch_end;
 } while (ch_end < skb->len);

 return 0;

discard:
 return 1;
}
