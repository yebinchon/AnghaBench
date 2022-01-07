
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct audit_buffer {struct sk_buff* skb; } ;


 scalar_t__ NLMSG_HDRLEN ;
 int audit_buffer_free (struct audit_buffer*) ;
 int audit_log_lost (char*) ;
 int audit_queue ;
 scalar_t__ audit_rate_check () ;
 int kauditd_wait ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int wake_up_interruptible (int *) ;

void audit_log_end(struct audit_buffer *ab)
{
 struct sk_buff *skb;
 struct nlmsghdr *nlh;

 if (!ab)
  return;

 if (audit_rate_check()) {
  skb = ab->skb;
  ab->skb = ((void*)0);



  nlh = nlmsg_hdr(skb);
  nlh->nlmsg_len = skb->len - NLMSG_HDRLEN;


  skb_queue_tail(&audit_queue, skb);
  wake_up_interruptible(&kauditd_wait);
 } else
  audit_log_lost("rate limit exceeded");

 audit_buffer_free(ab);
}
