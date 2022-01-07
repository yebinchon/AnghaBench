
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct audit_buffer {struct sk_buff* skb; } ;


 int BUG_ON (int) ;
 int audit_expand (struct audit_buffer*,int) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;

void audit_log_n_string(struct audit_buffer *ab, const char *string,
   size_t slen)
{
 int avail, new_len;
 unsigned char *ptr;
 struct sk_buff *skb;

 if (!ab)
  return;

 BUG_ON(!ab->skb);
 skb = ab->skb;
 avail = skb_tailroom(skb);
 new_len = slen + 3;
 if (new_len > avail) {
  avail = audit_expand(ab, new_len);
  if (!avail)
   return;
 }
 ptr = skb_tail_pointer(skb);
 *ptr++ = '"';
 memcpy(ptr, string, slen);
 ptr += slen;
 *ptr++ = '"';
 *ptr = 0;
 skb_put(skb, slen + 2);
}
